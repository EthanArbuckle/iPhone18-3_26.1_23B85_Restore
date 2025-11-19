unsigned __int8 *MBDIMCreateDictionaryFromCSSString(void *a1, char a2)
{
  v2 = a1;
  if (!v2)
  {
    v5 = 0;
    goto LABEL_47;
  }

  v28 = objc_alloc_init(NSMutableDictionary);
  v3 = [v2 lengthOfBytesUsingEncoding:4];
  if (!v3)
  {
LABEL_44:
    v5 = 0;
    goto LABEL_46;
  }

  v4 = v3;
  v5 = malloc_type_malloc((v3 + 1), 0x781C8EDFuLL);
  if (!v5)
  {
    goto LABEL_46;
  }

  if (![v2 getCString:v5 maxLength:v4 + 1 encoding:4])
  {
    free(v5);
    goto LABEL_44;
  }

  v6 = 0;
  v26 = v5;
  while (1)
  {
    v7 = *v5;
    if (*v5)
    {
      v8 = 0;
      while (1)
      {
        v9 = v5;
        if (v7 > 0x39)
        {
          if (v7 == 58)
          {

            goto LABEL_38;
          }

          if (v7 < 0x3C)
          {
            break;
          }
        }

        do
        {
          v10 = *++v5;
        }

        while (byte_100033B30[v10] < 0);
        v11 = v5 - 1;
        v12 = v9;
        if (v9 < v5)
        {
          while (1)
          {
            v13 = *v9;
            v14 = v13 > 0x27;
            v15 = (1 << v13) & 0x8500002600;
            if (v14 || v15 == 0)
            {
              break;
            }

            v12 = v9 + 1;
            if (v9++ >= v11)
            {
              goto LABEL_19;
            }
          }

          v12 = v9;
        }

LABEL_19:
        v18 = v5;
        if (v11 > v12)
        {
          v19 = v5;
          v18 = v5;
          while (1)
          {
            v20 = *--v18;
            v21 = (1 << v20) & 0x8500002600;
            if (v20 > 0x27 || v21 == 0)
            {
              break;
            }

            v19 = v18;
            if (v18 <= (v12 + 1))
            {
              goto LABEL_26;
            }
          }

          v18 = v19;
        }

LABEL_26:
        v23 = [[NSString alloc] initWithBytes:v12 length:v18 - v12 encoding:4];

        v7 = *v5;
        v8 = v23;
        if (!*v5)
        {
          goto LABEL_31;
        }
      }

      v23 = v8;
      if (v6)
      {
LABEL_32:
        if (v23)
        {
          if (a2)
          {
            v24 = [v6 lowercaseString];
            [v28 setObject:v23 forKey:v24];
          }

          else
          {
            [v28 setObject:v23 forKey:v6];
          }
        }
      }
    }

    else
    {
      v23 = 0;
LABEL_31:
      if (v6)
      {
        goto LABEL_32;
      }
    }

    if (!*v5)
    {
      break;
    }

    v8 = 0;
    v9 = v5;
LABEL_38:
    v5 = v9 + 1;
    v6 = v8;
  }

  free(v26);
  v5 = v28;
LABEL_46:

LABEL_47:
  return v5;
}

id MBDIMCopyNormalizedAttributes(void *a1, int a2, int a3)
{
  v5 = a1;
  v6 = v5;
  if (a2 & 1) != 0 || (a3)
  {
    v7 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v5, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    obj = [v6 keyEnumerator];
    v8 = [obj countByEnumeratingWithState:&v19 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v20;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v19 + 1) + 8 * i);
          v13 = [v6 objectForKey:v12];
          if (a2)
          {
            v14 = [v12 lowercaseString];

            v12 = v14;
          }

          if (a3)
          {
            v15 = [v13 lowercaseString];

            v13 = v15;
          }

          [v7 setObject:v13 forKey:v12];
        }

        v9 = [obj countByEnumeratingWithState:&v19 objects:v18 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v7 = [v5 copy];
  }

  return v7;
}

id SMSCopySanitizedContentLocation(void *a1)
{
  v1 = a1;
  if ([v1 hasPrefix:@"cid:"])
  {
    v2 = [v1 mutableCopy];
    [v2 replaceOccurrencesOfString:@"cid:" withString:&stru_10003EBC8 options:2 range:{0, objc_msgSend(@"cid:", "length")}];
  }

  else
  {
    v2 = v1;
  }

  return v2;
}

double transcriptWaveformWidthForDuration(double a1)
{
  if (a1 >= 20.0)
  {
    return 150.0;
  }

  v1 = (log2(a1 + 1.0) * 50.0 / 4.39231742);
  if (v1 <= 0x19)
  {
    v1 = 25;
  }

  return (3 * v1);
}

AudioMetadata *audioMetadataForFileURL(void *a1)
{
  v64 = a1;
  v63 = objc_alloc_init(AudioMetadata);
  v62 = 0;
  v61 = 0;
  outExtAudioFile = 0;
  memset(&__b, 0, sizeof(__b));
  v60 = malloc_type_malloc(0x8000uLL, 0x1000040BDFB0063uLL);
  if (v60)
  {
    if (v64)
    {
      ExtAudioFileOpenURL(v64, &outExtAudioFile);
      if (outExtAudioFile)
      {
        outPropertyData = 0;
        ioPropertyDataSize = 8;
        Property = ExtAudioFileGetProperty(outExtAudioFile, 0x6166696Cu, &ioPropertyDataSize, &outPropertyData);
        if (Property)
        {
          v51 = sub_10000AA78();
          if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
          {
            v50 = sub_10000AAD8(Property);
            sub_10000AAC4(v90, v50);
            _os_log_error_impl(&_mh_execute_header, v51, OS_LOG_TYPE_ERROR, "Unable to get audioID: %@", v90, 0xCu);
          }
        }

        else
        {
          v74 = 0;
          ioDataSize = 4;
          AudioFileGetProperty(outPropertyData, 0x66666D74u, &ioDataSize, &v74);
          v49 = v74 == 1667327590;
          if (v74 == 1667327590)
          {
            v72 = 0.0;
            v71 = 8;
            v53 = AudioFileGetProperty(outPropertyData, 0x65647572u, &v71, &v72);
            if (v53)
            {
              v47 = sub_10000AA78();
              if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
              {
                v46 = sub_10000AAD8(v53);
                sub_10000AAC4(v89, v46);
                _os_log_error_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "Unable to get duration: %@", v89, 0xCu);
              }
            }

            else
            {
              [(AudioMetadata *)v63 setDuration:v72];
              v45 = transcriptWaveformWidthForDuration(v72);
              v44 = powerLevelsCountForWidth(v45);
              if (v44 && v44 < 0x3E8)
              {
                v61 = [[NSMutableArray alloc] initWithCapacity:v44];

                if (v61)
                {
                  for (i = 0; i < v44; ++i)
                  {
                    v2 = [NSNumber numberWithUnsignedInteger:0];
                    [v61 addObject:v2];
                  }

                  v40 = v72 / v44;
                  memset(v70, 0, sizeof(v70));
                  v69 = 40;
                  v3 = ExtAudioFileGetProperty(outExtAudioFile, 0x66666D74u, &v69, v70);
                  v54 = v3;
                  if (v3)
                  {
                    v39 = sub_10000AA78();
                    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
                    {
                      v38 = sub_10000AAD8(v54);
                      sub_10000AAC4(v87, v38);
                      _os_log_error_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "Unable to get sourceFormat: %@", v87, 0xCu);
                    }
                  }

                  else if (!v49 || LODWORD(v70[1]) == 1869641075)
                  {
                    memset(inPropertyData, 0, sizeof(inPropertyData));
                    if (v70[0] > 0.0 && v70[0] < 72000.0)
                    {
                      inPropertyData[0] = v70[0];
                      *&inPropertyData[1] = 0x96C70636DLL;
                      LODWORD(inPropertyData[4]) = 32;
                      *&inPropertyData[3] = 0x100000004;
                      *&inPropertyData[2] = 0x100000004;
                      v55 = ExtAudioFileSetProperty(outExtAudioFile, 0x63666D74u, 0x28u, inPropertyData);
                      if (v55)
                      {
                        v35 = sub_10000AA78();
                        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
                        {
                          v34 = sub_10000AAD8(v55);
                          sub_10000AAC4(v84, v34);
                          _os_log_error_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "Unable to set clientFormat: %@", v84, 0xCu);
                        }
                      }

                      else
                      {
                        v33 = 0.0;
                        v62 = [[NSMutableArray alloc] initWithCapacity:v44];

                        if (v62)
                        {
                          for (j = 0; j < v44; ++j)
                          {
                            v6 = [NSNumber numberWithFloat:0.0];
                            [v62 addObject:v6];
                          }

                          do
                          {
                            __b.mNumberBuffers = 1;
                            __b.mBuffers[0].mNumberChannels = 1;
                            __b.mBuffers[0].mDataByteSize = 0x8000;
                            __b.mBuffers[0].mData = v60;
                            ioNumberFrames = 0x2000;
                            v56 = ExtAudioFileRead(outExtAudioFile, &ioNumberFrames, &__b);
                            if (!v56 && ioNumberFrames)
                            {
                              v32 = ioNumberFrames / inPropertyData[0];
                              mData = __b.mBuffers[0].mData;
                              v27 = __b.mBuffers[0].mDataByteSize / LODWORD(inPropertyData[3]);
                              for (k = 0; k < v27; ++k)
                              {
                                if ((mData[k] * 32767.0) >= 0x7FFF)
                                {
                                  v7 = 0x7FFF;
                                }

                                else
                                {
                                  v7 = mData[k] * 32767.0;
                                }

                                if (v7 < -32768)
                                {
                                  v7 = -32768;
                                }

                                v25 = v7;
                                if (v27 == 1)
                                {
                                  v24 = v33;
                                }

                                else
                                {
                                  v24 = v33 + k / (v27 - 1) * v32;
                                }

                                if (v24 / v40 >= (v44 - 1))
                                {
                                  v8 = (v44 - 1);
                                }

                                else
                                {
                                  v8 = v24 / v40;
                                }

                                v23 = v8;
                                v9 = [v62 objectAtIndex:v8];
                                [v9 floatValue];
                                v11 = pow(v10, 2.0);
                                v12 = [v61 objectAtIndex:v23];
                                v13 = [v12 unsignedIntegerValue];
                                v14 = pow(v25, 2.0) + v11 * v13;
                                v15 = [v61 objectAtIndex:v23];
                                *&v14 = sqrt(v14 / ([v15 unsignedIntegerValue] + 1));

                                LODWORD(v16) = LODWORD(v14);
                                v17 = [NSNumber numberWithFloat:v16];
                                [v62 setObject:v17 atIndexedSubscript:v23];

                                v18 = [v61 objectAtIndex:v23];
                                v19 = [v18 unsignedIntegerValue] + 1;

                                v20 = [NSNumber numberWithUnsignedInteger:v19];
                                [v61 replaceObjectAtIndex:v23 withObject:v20];
                              }

                              v33 = v33 + v32;
                              v22 = 0;
                            }

                            else
                            {
                              oslog = sub_10000AA78();
                              if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
                              {
                                v28 = sub_10000AAD8(v56);
                                sub_10000AAC4(v83, v28);
                                _os_log_error_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "Unable to determine ioNumberFrames: %@", v83, 0xCu);
                              }

                              v22 = 2;
                            }
                          }

                          while (!v22);
                        }

                        else
                        {
                          v31 = sub_10000AA78();
                          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
                          {
                            sub_10000AABC(v78);
                            _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "Unable to allocate powerLevels", v78, 2u);
                          }
                        }
                      }
                    }

                    else
                    {
                      v36 = sub_10000AA78();
                      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
                      {
                        v5 = [NSNumber numberWithDouble:v70[0]];
                        sub_10000AAC4(v85, v5);
                        _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "mSampleRate is out of bounds: %@", v85, 0xCu);
                      }
                    }
                  }

                  else
                  {
                    v37 = sub_10000AA78();
                    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
                    {
                      v4 = [NSNumber numberWithUnsignedInt:LODWORD(v70[1])];
                      sub_10000AAC4(v86, v4);
                      _os_log_error_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "Format is not OPUS: %@", v86, 0xCu);
                    }
                  }
                }

                else
                {
                  v42 = sub_10000AA78();
                  if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
                  {
                    sub_10000AABC(v79);
                    _os_log_error_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "Unable to allocate runningAverageCounts", v79, 2u);
                  }
                }
              }

              else
              {
                v43 = sub_10000AA78();
                if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
                {
                  v1 = [NSNumber numberWithUnsignedInteger:v44];
                  sub_10000AAC4(v88, v1);
                  _os_log_error_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "Failing because powerLevelsCount is out of bounds: %@", v88, 0xCu);
                }
              }
            }
          }

          else
          {
            v48 = sub_10000AA78();
            if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
            {
              sub_10000AABC(v80);
              _os_log_error_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "Container is not CAF.", v80, 2u);
            }
          }
        }
      }

      else
      {
        v57 = sub_10000AA78();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          sub_10000AAC4(v91, v64);
          _os_log_error_impl(&_mh_execute_header, v57, OS_LOG_TYPE_ERROR, "Unable to open file url: %@", v91, 0xCu);
        }
      }
    }

    else
    {
      v58 = sub_10000AA78();
      if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
      {
        sub_10000AABC(v81);
        _os_log_error_impl(&_mh_execute_header, v58, OS_LOG_TYPE_ERROR, "No input file URL", v81, 2u);
      }
    }
  }

  else
  {
    v59 = sub_10000AA78();
    if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
    {
      sub_10000AABC(buf);
      _os_log_error_impl(&_mh_execute_header, v59, OS_LOG_TYPE_ERROR, "Couldn't allocate output buffer", buf, 2u);
    }
  }

  if (outExtAudioFile)
  {
    ExtAudioFileDispose(outExtAudioFile);
  }

  if (v60)
  {
    free(v60);
  }

  [(AudioMetadata *)v63 setPowerLevels:v62];
  v65 = v63;

  return v65;
}

id sub_10000AA78()
{
  if (qword_100043410 != -1)
  {
    sub_10002DD8C();
  }

  v1 = qword_100043418;

  return v1;
}

double sub_10000AAC4(uint64_t a1, uint64_t a2)
{
  *&result = 138412290;
  *a1 = 138412290;
  *(a1 + 4) = a2;
  return result;
}

const __CFString *sub_10000AAD8(int a1)
{
  if (a1 < 0)
  {
    if (a1 == -1502)
    {
      return @"kAudioServicesSystemSoundExceededMaximumDurationError";
    }

    if (a1 != -1501)
    {
      if (a1 == -1500)
      {
        return @"kAudioServicesSystemSoundUnspecifiedError";
      }

      return @"Unknown Error";
    }

    return @"kAudioServicesSystemSoundClientTimedOutError";
  }

  else if (a1 > 561213538)
  {
    if (a1 != 561213539)
    {
      if (a1 == 1886681407)
      {
        return @"kAudioServicesUnsupportedPropertyError";
      }

      return @"Unknown Error";
    }

    return @"kAudioServicesBadSpecifierSizeError";
  }

  else
  {
    if (a1)
    {
      if (a1 == 561211770)
      {
        return @"kAudioServicesBadPropertySizeError";
      }

      return @"Unknown Error";
    }

    return @"kAudioServicesNoError";
  }
}

void sub_10000AB98(id a1)
{
  qword_100043418 = os_log_create("com.apple.Messages.blastdoor", "AudioPreviewLevelsGenerator");

  _objc_release_x1();
}

void sub_10000AC20(id a1)
{
  qword_100043420 = objc_alloc_init(MBDXMLParser);

  _objc_release_x1();
}

id sub_10000AE88(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 16);
  v4 = a2;
  [v3 reset];
  v5 = [[NSXMLParser alloc] initWithData:v4];

  v6 = *(a1 + 32);
  v7 = *(v6 + 8);
  *(v6 + 8) = v5;

  v8 = objc_alloc_init(NSMutableArray);
  v9 = *(a1 + 32);
  v10 = *(v9 + 32);
  *(v9 + 32) = v8;

  v11 = *(a1 + 32);
  v12 = *(v11 + 24);
  *(v11 + 24) = 0;

  [*(*(a1 + 32) + 8) setDelegate:?];
  v13 = *(*(a1 + 32) + 8);

  return [v13 parse];
}

void sub_10000AF44(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  *(v2 + 32) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 24);
  *(v4 + 24) = 0;

  [*(*(a1 + 32) + 8) setDelegate:0];
  v6 = *(a1 + 32);
  v7 = *(v6 + 8);
  *(v6 + 8) = 0;
}

objc_class *sub_10000B59C(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_class();
  v5 = *(a1 + 32);
  v6 = objc_opt_class();
  if (v6 == v4)
  {
LABEL_5:
    v12 = 0;
  }

  else
  {
    Superclass = v6;
    while (1)
    {
      MethodImplementation = class_getMethodImplementation(Superclass, "name");
      v9 = (MethodImplementation)(*(a1 + 32), "name");
      v10 = [[NSString alloc] initWithFormat:@"%@_%@_Frame", v9, a2];
      v11 = NSClassFromString(v10);
      if (v11)
      {
        break;
      }

      Superclass = class_getSuperclass(Superclass);

      if (Superclass == v4)
      {
        goto LABEL_5;
      }
    }

    v12 = v11;
  }

  return v12;
}

id sub_10000B79C()
{
  if (qword_100043440 != -1)
  {
    sub_10002DE24();
  }

  v1 = qword_100043438;

  return v1;
}

void sub_10000BB7C(id a1)
{
  v1 = +[NSCharacterSet controlCharacterSet];
  v2 = [v1 mutableCopy];

  [v2 invert];
  v3 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  [v2 formUnionWithCharacterSet:v3];

  [v2 invert];
  WORD2(v7) = 6158;
  LODWORD(v7) = 537731084;
  v4 = [[NSString alloc] initWithCharactersNoCopy:&v7 length:3 freeWhenDone:0];
  [v2 removeCharactersInString:{v4, v7}];
  v5 = [v2 copy];
  v6 = qword_100043438;
  qword_100043438 = v5;
}

void sub_10000BC84(id a1)
{
  v1 = sub_10000B79C();
  v4 = [v1 mutableCopy];

  [v4 addCharactersInString:MBDIMAttachmentCharacterString];
  [v4 addCharactersInString:MBDIMBreadcrumbCharacterString];
  v2 = [v4 copy];
  v3 = qword_100043448;
  qword_100043448 = v2;
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = (*(*(sub_10000C0EC(&qword_100042D90, &qword_100033C60) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v5 = &v15 - v4;
  v6 = sub_10002E02C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __bd_register_for_dlsym_callbacks();
  _CFPrefsSetDirectModeEnabled();
  _CFPrefsSetReadOnly();
  sub_10002E0EC();
  qword_100044E00 = sub_10002E0AC();
  qword_100044E08 = &off_10003D798;
  sub_10002E07C();
  qword_100044E10 = &off_10003D828;
  sub_10002E08C();
  sub_10002E45C();
  sub_10000C134();
  sub_10002E0BC();
  sub_10002E17C();
  sub_10000C188();
  sub_10002E0BC();
  sub_10002E49C();
  sub_10000C1DC();
  sub_10002E0BC();
  sub_10002E14C();
  sub_10000C230();
  sub_10002E0BC();
  sub_10002E01C();
  sub_10002E64C();
  sub_10000C904(&qword_100042DB8, &type metadata accessor for RelayGroupMutationMessageUnpacker);
  sub_10002E0BC();
  (*(v7 + 8))(v10, v6);
  sub_10002E29C();
  sub_10000C284();
  sub_10002E0CC();
  sub_10002E3BC();
  sub_10000C2D8();
  sub_10002E0DC();
  sub_10002E26C();
  sub_10000C32C();
  sub_10002E0CC();
  v11 = sub_10002E81C();
  sub_10000C380(v11, qword_100044E18);
  v12 = sub_10000C3E4(v11, qword_100044E18);
  v13 = *(v11 - 8);
  (*(v13 + 104))(v12, enum case for SandboxID.airlock(_:), v11);
  (*(v13 + 16))(v5, v12, v11);
  (*(v13 + 56))(v5, 0, 1, v11);
  sub_10002E09C();
  sub_10000C41C(v5);
  return 0;
}

uint64_t sub_10000C0EC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_10000C134()
{
  result = qword_100042D98;
  if (!qword_100042D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100042D98);
  }

  return result;
}

unint64_t sub_10000C188()
{
  result = qword_100042DA0;
  if (!qword_100042DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100042DA0);
  }

  return result;
}

unint64_t sub_10000C1DC()
{
  result = qword_100042DA8;
  if (!qword_100042DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100042DA8);
  }

  return result;
}

unint64_t sub_10000C230()
{
  result = qword_100042DB0;
  if (!qword_100042DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100042DB0);
  }

  return result;
}

unint64_t sub_10000C284()
{
  result = qword_100042DC0;
  if (!qword_100042DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100042DC0);
  }

  return result;
}

unint64_t sub_10000C2D8()
{
  result = qword_100042DC8;
  if (!qword_100042DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100042DC8);
  }

  return result;
}

unint64_t sub_10000C32C()
{
  result = qword_100042DD0;
  if (!qword_100042DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100042DD0);
  }

  return result;
}

uint64_t *sub_10000C380(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_10000C3E4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_10000C41C(uint64_t a1)
{
  v2 = sub_10000C0EC(&qword_100042D90, &qword_100033C60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_10000C484(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_10000C4BC()
{
  v1 = *v0;
  sub_10002E87C();
  v2 = sub_10002E96C();

  return v2;
}

uint64_t sub_10000C4F8()
{
  v1 = *v0;
  sub_10002E87C();
  sub_10002E8FC();
}

Swift::Int sub_10000C54C()
{
  v1 = *v0;
  sub_10002E87C();
  sub_10002EDCC();
  sub_10002E8FC();
  v2 = sub_10002EDEC();

  return v2;
}

uint64_t sub_10000C5C8(uint64_t a1, id *a2)
{
  result = sub_10002E85C();
  *a2 = 0;
  return result;
}

uint64_t sub_10000C640(uint64_t a1, id *a2)
{
  v3 = sub_10002E86C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_10000C6C0@<X0>(void *a1@<X8>)
{
  sub_10002E87C();
  v2 = sub_10002E84C();

  *a1 = v2;
  return result;
}

uint64_t sub_10000C704(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_10002E87C();
  v6 = v5;
  if (v4 == sub_10002E87C() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_10002ED5C();
  }

  return v9 & 1;
}

uint64_t sub_10000C78C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_10002E84C();

  *a2 = v5;
  return result;
}

uint64_t sub_10000C7D4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_10002E87C();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_10000C800(uint64_t a1)
{
  v2 = sub_10000C904(&qword_100042E00, type metadata accessor for Key);
  v3 = sub_10000C904(&qword_100042E08, type metadata accessor for Key);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10000C904(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 sub_10000C9DC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_10000C9F0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000CA10(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 48) = v3;
  return result;
}

uint64_t sub_10000CA5C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000CA7C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

__n128 sub_10000CAB8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_10000CACC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000CAEC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 24) = v3;
  return result;
}

void sub_10000CB54(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_10000CC00@<X0>(const char *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v261 = a1;
  v262 = a2;
  v229 = a3;
  v3 = sub_10000C0EC(&qword_100042E40, &unk_100034D10);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v238 = &v199 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v237 = &v199 - v8;
  v9 = __chkstk_darwin(v7);
  v234 = &v199 - v10;
  __chkstk_darwin(v9);
  v233 = &v199 - v11;
  v12 = sub_10000C0EC(&qword_100042E48, &unk_100033F80);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v247 = &v199 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v245 = &v199 - v16;
  v252 = sub_10000C0EC(&qword_100042E50, &qword_100034D20);
  v231 = *(v252 - 8);
  v17 = *(v231 + 64);
  v18 = __chkstk_darwin(v252);
  v236 = &v199 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v232 = &v199 - v20;
  v258 = sub_10000C0EC(&qword_100042E58, &qword_100033F90);
  v230 = *(v258 - 8);
  v21 = *(v230 + 64);
  v22 = __chkstk_darwin(v258);
  v246 = &v199 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v259 = &v199 - v25;
  v26 = __chkstk_darwin(v24);
  v243 = &v199 - v27;
  __chkstk_darwin(v26);
  v244 = (&v199 - v28);
  v29 = sub_10000C0EC(&qword_100042E60, &qword_100033F98);
  v30 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29 - 8);
  v235 = &v199 - v31;
  v32 = sub_10002E13C();
  v33 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v32 - 8);
  v240 = &v199 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_10000C0EC(&qword_100042E68, &qword_100033FA0);
  v36 = *(*(v35 - 8) + 64);
  __chkstk_darwin(v35 - 8);
  v239 = &v199 - v37;
  v38 = sub_10002E11C();
  v241 = *(v38 - 8);
  v242 = v38;
  v39 = *(v241 + 64);
  __chkstk_darwin(v38);
  v255 = &v199 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_10002E7FC();
  v42 = *(*(v41 - 8) + 64);
  __chkstk_darwin(v41 - 8);
  v44 = &v199 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_10002E80C();
  v256 = *(v45 - 8);
  v46 = *(v256 + 64);
  __chkstk_darwin(v45);
  v48 = &v199 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_10000C0EC(&qword_100042E70, &qword_100033FA8);
  v50 = *(*(v49 - 8) + 64);
  v51 = __chkstk_darwin(v49 - 8);
  v53 = &v199 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v51);
  v55 = &v199 - v54;
  v56 = type metadata accessor for SMSDictionary();
  v57 = *(*(v56 - 1) + 64);
  __chkstk_darwin(v56);
  v59 = &v199 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_10002DE7C();
  v61 = *(v60 + 48);
  v62 = *(v60 + 52);
  swift_allocObject();
  v63 = sub_10002DE6C();
  sub_10000E54C(&qword_100042E78, type metadata accessor for SMSDictionary);
  v64 = v271;
  sub_10002DE5C();
  v271 = v64;
  if (v64)
  {
  }

  v253 = v48;
  v254 = v44;
  v251 = v45;
  v224 = v53;
  v226 = v63;
  v227 = v55;
  v66 = *&v59[v56[23]];
  if (v66)
  {
    v67 = *&v59[v56[23]];
  }

  else
  {
    v67 = &_swiftEmptyArrayStorage;
  }

  v68 = v67[2];
  v248 = v59;
  v228 = v56;
  v257 = v67;
  v225 = v66;
  if (v68)
  {
    v263[0] = &_swiftEmptyArrayStorage;

    result = sub_10000E594(0, v68, 0);
    v69 = 0;
    v70 = v263[0];
    v249 = (v256 + 32);
    v250 = v68;
    v71 = 32;
    while (v69 < v67[2])
    {
      v261 = v69;
      v262 = v70;
      v260 = v71;
      v72 = *(v67 + v71 + 48);
      v73 = *(v67 + v71 + 64);
      v74 = *(v67 + v71 + 32);
      v270[1] = *(v67 + v71 + 16);
      v270[2] = v74;
      v75 = *(v67 + v71);
      v270[3] = v72;
      v270[4] = v73;
      v270[0] = v75;
      sub_10000E5B4(v270, &v264);

      v76 = v271;
      sub_10002A25C(v254);
      if (v76)
      {
        v271 = v76;

        sub_10000E610(v270);

        v81 = v248;
        return sub_10000E664(v81);
      }

      v77 = v253;
      sub_10002E7EC();
      v271 = 0;
      sub_10000E610(v270);
      v70 = v262;
      v263[0] = v262;
      v79 = v262[2];
      v78 = v262[3];
      v67 = v257;
      if (v79 >= v78 >> 1)
      {
        sub_10000E594(v78 > 1, v79 + 1, 1);
        v77 = v253;
        v70 = v263[0];
      }

      v69 = v261 + 1;
      v70[2] = v79 + 1;
      result = (*(v256 + 32))(v70 + ((*(v256 + 80) + 32) & ~*(v256 + 80)) + *(v256 + 72) * v79, v77, v251);
      v71 = v260 + 80;
      v80 = v255;
      if (v250 == v69)
      {
        v82 = v248;
        v56 = v228;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v82 = v59;

  v70 = &_swiftEmptyArrayStorage;
  v80 = v255;
LABEL_16:
  v83 = (v82 + v56[26]);
  v84 = *v83;
  v85 = v83[1];
  v86 = v82 + v56[27];
  v87 = *v86;
  v88 = *(v86 + 8);

  sub_10002E68C();
  v89 = v227;
  v90 = v271;
  sub_10002E0FC();
  if (v90)
  {

    v271 = 0;
    v91 = 1;
  }

  else
  {
    v271 = 0;
    v91 = 0;
  }

  v93 = v241;
  v92 = v242;
  v94 = sub_10002E10C();
  (*(*(v94 - 8) + 56))(v89, v91, 1, v94);
  v223 = *v248;
  v222 = v248[8];
  v95 = v239;
  sub_10000E7CC(&v248[v228[5]], v239, &qword_100042E68, &qword_100033FA0);
  v96 = *(v93 + 48);
  v97 = v96(v95, 1, v92);
  v262 = v70;
  if (v97 == 1)
  {
    (*(v93 + 104))(v80, enum case for SMSMessage.FilterSubCategoryType.filterSubCategoryNone(_:), v92);
    if (v96(v95, 1, v92) != 1)
    {
      sub_10000E76C(v95, &qword_100042E68, &qword_100033FA0);
    }
  }

  else
  {
    (*(v93 + 32))(v80, v95, v92);
  }

  v98 = v228;
  v99 = v228[7];
  v100 = v248;
  v101 = &v248[v228[6]];
  v103 = *v101;
  v102 = *(v101 + 1);
  v105 = *&v248[v99];
  v104 = *&v248[v99 + 8];

  v250 = v104;

  v106 = v271;
  sub_100012EA4(v240);
  v271 = v106;
  if (!v106)
  {
    v219 = v105;
    v220 = v103;
    v221 = v102;
    v107 = v98[10];
    v242 = *(v100 + v98[9]);
    sub_10000E7CC(v100 + v107, v235, &qword_100042E60, &qword_100033F98);
    v108 = v98[12];
    v109 = (v100 + v98[11]);
    v110 = v109[1];
    v218 = *v109;
    v216 = *(v100 + v108);
    v215 = *(v100 + v108 + 8);
    v111 = v98[14];
    v112 = (v100 + v98[13]);
    v113 = v112[1];
    v214 = *v112;
    v114 = *(v100 + v111 + 8);
    v212 = *(v100 + v111);
    v115 = v98[16];
    v116 = (v100 + v98[15]);
    v117 = v116[1];
    v210 = *v116;
    v118 = *(v100 + v115 + 8);
    v208 = *(v100 + v115);
    v119 = v98[18];
    v120 = (v100 + v98[17]);
    v121 = *v120;
    v241 = v120[1];
    v122 = *(v100 + v119 + 8);
    v205 = *(v100 + v119);
    v206 = v121;
    v239 = v122;
    v123 = v98[20];
    v124 = v100 + v98[19];
    v204 = *v124;
    v203 = *(v124 + 8);
    v125 = v100 + v123;
    v126 = *(v100 + v123);
    v201 = *(v125 + 8);
    v202 = v126;
    v207 = v118;
    v127 = v225;
    v217 = v110;
    v213 = v113;
    v211 = v114;
    v209 = v117;
    if (!v225)
    {

      v128 = v252;
      v129 = v247;
      v130 = v259;
      goto LABEL_45;
    }

    v254 = *(v225 + 16);

    v128 = v252;
    v129 = v247;
    v130 = v259;
    if (!v254)
    {
      v151 = 0;
      goto LABEL_43;
    }

    v131 = 0;
    v132 = (v127 + 32);
    v253 = "rc-original-guid";
    v256 = v230 + 8;
    v251 = (v231 + 56);
    v249 = (v231 + 48);
    v199 = (v231 + 32);
    v200 = (v231 + 8);
    v133 = v244;
    v134 = v245;
    while (1)
    {
      v264 = *v132;
      v135 = v132[1];
      v136 = v132[2];
      v137 = v132[4];
      v267 = v132[3];
      v268 = v137;
      v265 = v135;
      v266 = v136;
      sub_10000E5B4(&v264, v263);
      sub_10000C0EC(&qword_100042E80, &qword_100033FB0);
      sub_10002DF8C();
      if (!*(&v265 + 1))
      {
        break;
      }

      v261 = v131;
      sub_10002E98C();
      v260 = v138;
      sub_10000E6C0();
      v139 = v243;
      v140 = v258;
      sub_10002DF7C();
      v141 = v271;
      sub_10002DF9C();
      v142 = v256;
      if (v141)
      {

        v143 = *v142;
        (*v142)(v139, v140);
        v128 = v252;
        v134 = v245;
        (*v251)(v245, 1, 1, v252);
        v271 = 0;
        v144 = v140;
        goto LABEL_37;
      }

      v271 = 0;
      v143 = *v256;
      (*v256)(v139, v140);

      v134 = v245;
      v128 = v252;
      if ((*v249)(v245, 1, v252) == 1)
      {
        v144 = v258;
LABEL_37:
        v131 = v261;
        v145 = v244;
        v143(v244, v144);
        v133 = v145;
        v129 = v247;
        v100 = v248;
        v130 = v259;
LABEL_30:
        sub_10000E76C(v134, &qword_100042E48, &unk_100033F80);
        goto LABEL_31;
      }

      v146 = v232;
      (*v199)(v232, v134, v128);
      swift_getKeyPath();
      sub_10002DFAC();

      sub_10002E8DC();

      v147 = v233;
      sub_10002DEFC();

      v148 = v234;
      sub_10000E7CC(v147, v234, &qword_100042E40, &unk_100034D10);
      v149 = sub_10002DF1C();
      v150 = *(v149 - 8);
      if ((*(v150 + 48))(v148, 1, v149) != 1)
      {
        sub_10002DF0C();
        sub_10000E76C(v147, &qword_100042E40, &unk_100034D10);
        v198 = v252;
        (*v200)(v146, v252);
        v143(v244, v258);
        (*(v150 + 8))(v148, v149);
        sub_10000E610(&v264);

        v129 = v247;
        v100 = v248;
        v128 = v198;
        v130 = v259;
        v67 = v257;
        v151 = v261;
LABEL_43:
        result = v225;
        v152 = *(v225 + 16);
        if (v151 != v152)
        {
          if (v151 < v152)
          {
            v156 = (v225 + 80 * v151);
            v269[0] = v156[2];
            v157 = v156[3];
            v158 = v156[4];
            v159 = v156[6];
            v269[3] = v156[5];
            v269[4] = v159;
            v269[1] = v157;
            v269[2] = v158;
            sub_10000E5B4(v269, &v264);
            v243 = sub_10002B794();
            v161 = v160;
            result = sub_10000E610(v269);
            v234 = v161;
            if (v161)
            {

              v129 = v247;
              v153 = v228;
              goto LABEL_49;
            }

            goto LABEL_70;
          }

LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
          return result;
        }

LABEL_45:
        v153 = v228;
        v154 = (v100 + v228[21]);
        v155 = v154[1];
        v243 = *v154;
        v234 = v155;

LABEL_49:
        v162 = (v100 + v153[22]);
        v163 = *v162;
        v232 = v162[1];
        v233 = v163;
        v164 = v153[25];
        LODWORD(v225) = *(v100 + v153[24]);
        LODWORD(v200) = *(v100 + v164);
        v165 = v67[2];

        v256 = v165;
        if (!v165)
        {
LABEL_63:

          LODWORD(v261) = 0;
LABEL_64:
          v185 = (v100 + v228[30]);
          v186 = *v185;
          v187 = v185[1];
          v188 = (v100 + v228[31]);
          v189 = v188[1];
          v259 = *v188;
          v260 = v186;
          v190 = v228[28];
          v191 = (v100 + v228[29]);
          v192 = v100;
          v193 = *v191;
          v194 = v191[1];
          v196 = *(v192 + v190);
          v195 = *(v192 + v190 + 8);
          v197 = v227;
          sub_10000E7CC(v227, v224, &qword_100042E70, &qword_100033FA8);

          sub_10002E12C();
          sub_10000E76C(v197, &qword_100042E70, &qword_100033FA8);

          return sub_10000E664(v248);
        }

        v166 = 0;
        v167 = (v230 + 8);
        v253 = (v231 + 56);
        v254 = "rc-original-guid";
        v249 = (v231 + 48);
        v244 = (v231 + 8);
        v245 = (v231 + 32);
        v168 = 32;
        v251 = (v230 + 8);
        while (2)
        {
          if (v166 >= v67[2])
          {
            goto LABEL_68;
          }

          v264 = *(v67 + v168);
          v169 = *(v67 + v168 + 16);
          v170 = *(v67 + v168 + 32);
          v171 = *(v67 + v168 + 64);
          v267 = *(v67 + v168 + 48);
          v268 = v171;
          v265 = v169;
          v266 = v170;
          sub_10000E5B4(&v264, v263);
          sub_10000C0EC(&qword_100042E80, &qword_100033FB0);
          sub_10002DF8C();
          if (*(&v265 + 1))
          {
            v260 = v168;
            v261 = v166;
            sub_10002E98C();
            sub_10000E6C0();
            v172 = v246;
            v173 = v129;
            v174 = v258;
            sub_10002DF7C();
            v175 = v271;
            sub_10002DF9C();
            if (v175)
            {

              sub_10000E610(&v264);
              v167 = v251;
              v176 = *v251;
              (*v251)(v172, v174);
              v128 = v252;
              (*v253)(v173, 1, 1, v252);
              v271 = 0;
              v177 = v174;
              goto LABEL_60;
            }

            v271 = 0;
            v167 = v251;
            v176 = *v251;
            (*v251)(v172, v174);

            v128 = v252;
            if ((*v249)(v173, 1, v252) == 1)
            {
              sub_10000E610(&v264);
              v177 = v258;
LABEL_60:
              v67 = v257;
              v176(v259, v177);
              v129 = v247;
              v100 = v248;
              v168 = v260;
              v166 = v261;
LABEL_52:
              result = sub_10000E76C(v129, &qword_100042E48, &unk_100033F80);
            }

            else
            {
              v178 = v173;
              v179 = v236;
              (*v245)(v236, v178, v128);
              swift_getKeyPath();
              sub_10002DFAC();

              sub_10002E8DC();

              v180 = v237;
              sub_10002DEFC();

              v181 = v238;
              sub_10000E7CC(v180, v238, &qword_100042E40, &unk_100034D10);
              v182 = sub_10002DF1C();
              v183 = *(v182 - 8);
              v184 = (*(v183 + 48))(v181, 1, v182);
              v67 = v257;
              if (v184 != 1)
              {
                sub_10002DF0C();
                sub_10000E610(&v264);
                sub_10000E76C(v180, &qword_100042E40, &unk_100034D10);
                (*v244)(v179, v252);
                v176(v259, v258);
                (*(v183 + 8))(v181, v182);

                LODWORD(v261) = 1;
                v100 = v248;
                goto LABEL_64;
              }

              sub_10000E610(&v264);
              sub_10000E76C(v180, &qword_100042E40, &unk_100034D10);
              v128 = v252;
              (*v244)(v179, v252);
              v167 = v251;
              v176(v259, v258);
              result = sub_10000E76C(v181, &qword_100042E40, &unk_100034D10);
              v129 = v247;
              v100 = v248;
              v168 = v260;
              v166 = v261;
            }

            ++v166;
            v168 += 80;
            v130 = v259;
            if (v256 == v166)
            {
              goto LABEL_63;
            }

            continue;
          }

          break;
        }

        sub_10000E610(&v264);
        (*v167)(v130, v258);
        (*v253)(v129, 1, 1, v128);
        goto LABEL_52;
      }

      sub_10000E76C(v147, &qword_100042E40, &unk_100034D10);
      v128 = v252;
      (*v200)(v146, v252);
      v133 = v244;
      v143(v244, v258);
      sub_10000E76C(v148, &qword_100042E40, &unk_100034D10);
      v129 = v247;
      v100 = v248;
      v130 = v259;
      v134 = v245;
      v131 = v261;
LABEL_31:
      sub_10000E610(&v264);
      ++v131;
      v132 += 5;
      if (v254 == v131)
      {
        v151 = v254;
        v67 = v257;
        goto LABEL_43;
      }
    }

    (*v256)(v133, v258);
    (*v251)(v134, 1, 1, v128);
    goto LABEL_30;
  }

  (*(v241 + 8))(v80, v242);
  sub_10000E76C(v227, &qword_100042E70, &qword_100033FA8);
  v81 = v100;
  return sub_10000E664(v81);
}

uint64_t sub_10000E54C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

size_t sub_10000E594(size_t a1, int64_t a2, char a3)
{
  result = sub_10000E854(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_10000E664(uint64_t a1)
{
  v2 = type metadata accessor for SMSDictionary();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10000E6C0()
{
  result = qword_100042E88;
  if (!qword_100042E88)
  {
    sub_10000E724(&qword_100042E58, &qword_100033F90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100042E88);
  }

  return result;
}

uint64_t sub_10000E724(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000E76C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10000C0EC(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000E7CC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000C0EC(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

char *sub_10000E834(char *a1, int64_t a2, char a3)
{
  result = sub_10000EA30(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_10000E854(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10000C0EC(&qword_100042E90, &qword_100033FD8);
  v10 = *(sub_10002E80C() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_10002E80C() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_10000EA30(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000C0EC(&qword_100042E98, &unk_100033FE0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

void BasicMessage.init(messageDictionary:)(void **a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v4 = sub_10000C0EC(&qword_100042EA0, &qword_100034CE0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v33 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = v31 - v9;
  __chkstk_darwin(v8);
  v12 = v31 - v11;
  v13 = [objc_opt_self() sharedInstance];
  v14 = v13;
  if (a1[8])
  {
    v15 = a1[7];
    v16 = a1[8];
  }

  else
  {
    if (!a1[6])
    {
      v32 = v13;
      v25 = sub_10002E52C();
      (*(*(v25 - 8) + 56))(v12, 1, 1, v25);
      v24 = v12;
      goto LABEL_11;
    }

    v17 = a1[5];
    v18 = a1[6];
  }

  v19 = objc_allocWithZone(MBDMessageToSuperParserContext);

  v20 = sub_10002E84C();

  v21 = [v19 initWithContent:v20];

  if (![v14 parseContext:v21])
  {
    sub_10002E7DC();
    sub_10000EFF0();
    swift_allocError();
    sub_10002E7CC();
    swift_willThrow();

    sub_10000EF34(a1);
    return;
  }

  _AttributedString.init(fromNSAttributedString:)([v21 body], v10);

  if (v2)
  {

    sub_10000EF34(a1);
    return;
  }

  v32 = v14;
  v22 = sub_10002E52C();
  (*(*(v22 - 8) + 56))(v10, 0, 1, v22);
  v23 = v10;
  v24 = v12;
  sub_10000F048(v23, v12);
LABEL_11:
  v26 = &_swiftEmptyArrayStorage;
  v27 = a1[1];
  if (*a1)
  {
    v26 = *a1;
  }

  v31[1] = v26;
  v29 = a1[3];
  v28 = a1[4];
  v30 = a1[2];
  sub_10000EEC4(v24, v33);

  sub_10002E19C();

  sub_10000EF34(a1);
  sub_10000EF88(v24);
}

uint64_t sub_10000EEC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C0EC(&qword_100042EA0, &qword_100034CE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000EF88(uint64_t a1)
{
  v2 = sub_10000C0EC(&qword_100042EA0, &qword_100034CE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10000EFF0()
{
  result = qword_100042EA8;
  if (!qword_100042EA8)
  {
    sub_10002E7DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100042EA8);
  }

  return result;
}

uint64_t sub_10000F048(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C0EC(&qword_100042EA0, &qword_100034CE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000F0B8()
{
  v1 = sub_10000C0EC(&qword_100042ED0, &unk_1000349D0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = sub_10002EBEC();
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3);
  __chkstk_darwin(v5);
  v6 = *(v0 + 248);
  if (v6 >> 60 == 15)
  {
    return 0;
  }

  v7 = *(v0 + 240);
  v8 = sub_10002DE7C();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  sub_10000F7EC(v7, v6);
  sub_10002DE6C();
  sub_10000F840();
  sub_10002DE5C();

  sub_10000F894(v7, v6);
  return v12;
}

uint64_t sub_10000F4F8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10002E1DC();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  sub_10000F0B8();
  if (v4 == 1)
  {
    v5 = sub_10002E1FC();
    v6 = *(*(v5 - 8) + 56);

    return v6(a1, 1, 1, v5);
  }

  else
  {
    sub_10002E1CC();
    sub_10002E1EC();
    v8 = sub_10002E1FC();
    return (*(*(v8 - 8) + 56))(a1, 0, 1, v8);
  }
}

unint64_t sub_10000F74C()
{
  result = qword_100042EB0;
  if (!qword_100042EB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100042EB0);
  }

  return result;
}

unint64_t sub_10000F798()
{
  result = qword_100042EC8;
  if (!qword_100042EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100042EC8);
  }

  return result;
}

uint64_t sub_10000F7EC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_10000F840()
{
  result = qword_100042ED8;
  if (!qword_100042ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100042ED8);
  }

  return result;
}

uint64_t sub_10000F894(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10000F8A8(a1, a2);
  }

  return a1;
}

uint64_t sub_10000F8A8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10000F8FC(uint64_t a1)
{
  v2 = sub_10000C0EC(&qword_100042ED0, &unk_1000349D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10000F978()
{
  result = qword_100042EE0;
  if (!qword_100042EE0)
  {
    sub_10002E26C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100042EE0);
  }

  return result;
}

Swift::Int sub_10000F9D8()
{
  sub_10002EDCC();
  sub_10002EDDC(0);
  return sub_10002EDEC();
}

Swift::Int sub_10000FA44()
{
  sub_10002EDCC();
  sub_10002EDDC(0);
  return sub_10002EDEC();
}

void sub_10000FA94()
{
  v0 = sub_10002DEBC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10002E74C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002E70C();
  sub_10002E73C();
  (*(v6 + 8))(v9, v5);
  sub_10002DE9C(v10);
  v12 = v11;
  (*(v1 + 8))(v4, v0);
  v13 = audioMetadataForFileURL(v12);

  if (v13)
  {
    v14 = [(AudioMetadata *)v13 powerLevels];
    if (v14)
    {
      v15 = v14;
      sub_10000FF50();
      v16 = sub_10002E99C();

      v17 = sub_10000FCE4(v16);

      if (v17)
      {
        [(AudioMetadata *)v13 duration];
        sub_10002E25C();

        return;
      }
    }
  }

  sub_10000FEFC();
  swift_allocError();
  swift_willThrow();
}

void *sub_10000FCE4(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_10002EC0C())
  {
    sub_10000E834(0, i & ~(i >> 63), 0);
    v4 = &_swiftEmptyArrayStorage;
    if (v2)
    {
      v2 = sub_10002EC0C();
      if (!v2)
      {
        return v4;
      }
    }

    else
    {
      v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v2)
      {
        return v4;
      }
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v5 = *(a1 + 32);
      goto LABEL_10;
    }

    __break(1u);
LABEL_14:
    ;
  }

  v5 = sub_10002EBDC();
LABEL_10:
  v6 = v5;
  sub_10002EA0C();

  return 0;
}

unint64_t sub_10000FEFC()
{
  result = qword_100042EE8;
  if (!qword_100042EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100042EE8);
  }

  return result;
}

unint64_t sub_10000FF50()
{
  result = qword_100042EF0;
  if (!qword_100042EF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100042EF0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BasicPreviewAudioUnpacker.BasicPreviewAudioUnpackerError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for BasicPreviewAudioUnpacker.BasicPreviewAudioUnpackerError(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_10001008C()
{
  result = qword_100042EF8;
  if (!qword_100042EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100042EF8);
  }

  return result;
}

uint64_t BasicMessageDictionary.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_10000C0EC(&qword_100042F00, &qword_100034140);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v53[-v8 - 8];
  v10 = a1[4];
  sub_1000106D4(a1, a1[3]);
  sub_100010718();
  sub_10002EE0C();
  v11 = *(v3 + 144);
  v12 = *(v3 + 152);
  LOBYTE(v55) = 0;
  sub_10002ED0C();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = *(v3 + 160);
  v14 = *(v3 + 168);
  LOBYTE(v55) = 1;
  sub_10002ECDC();
  v15 = *(v3 + 176);
  v16 = *(v3 + 184);
  LOBYTE(v55) = 2;
  sub_10002ECDC();
  v17 = *(v3 + 192);
  v18 = *(v3 + 200);
  LOBYTE(v55) = 3;
  sub_10002ECDC();
  *&v55 = *v3;
  v53[0] = 4;
  sub_10000C0EC(&qword_100042F10, &qword_100034148);
  sub_1000121F4(&qword_100042F18);
  sub_10002ED1C();
  v19 = *(v3 + 8);
  v20 = *(v3 + 16);
  LOBYTE(v55) = 5;
  sub_10002ECDC();
  v21 = *(v3 + 24);
  v22 = *(v3 + 32);
  LOBYTE(v55) = 6;
  sub_10002ECDC();
  v23 = *(v3 + 40);
  v24 = *(v3 + 48);
  LOBYTE(v55) = 7;
  sub_10002ECDC();
  v25 = *(v3 + 56);
  v26 = *(v3 + 64);
  LOBYTE(v55) = 8;
  sub_10002ECDC();
  v27 = *(v3 + 72);
  LOBYTE(v55) = 9;
  sub_10002ECEC();
  v52 = v6;
  v28 = *(v3 + 73);
  LOBYTE(v55) = 10;
  sub_10002ECEC();
  v57 = *(v3 + 80);
  v55 = *(v3 + 80);
  v54 = 11;
  sub_10001076C(&v57, v53);
  sub_1000107DC();
  sub_10002ED1C();
  sub_10000F894(v55, *(&v55 + 1));
  v29 = *(v3 + 96);
  v30 = *(v3 + 104);
  LOBYTE(v55) = 12;
  sub_10002ECFC();
  v31 = *(v3 + 112);
  v32 = *(v3 + 120);
  LOBYTE(v55) = 13;
  sub_10002ECDC();
  v33 = *(v3 + 128);
  v34 = *(v3 + 136);
  LOBYTE(v55) = 14;
  sub_10002ECDC();
  v35 = *(v3 + 208);
  v36 = *(v3 + 216);
  LOBYTE(v55) = 15;
  sub_10002ECDC();
  v55 = *(v3 + 240);
  v56 = v55;
  v54 = 16;
  sub_10001076C(&v56, v53);
  sub_10002ED1C();
  sub_10000F894(v55, *(&v55 + 1));
  v37 = *(v3 + 256);
  v38 = *(v3 + 264);
  LOBYTE(v55) = 17;
  sub_10002ECFC();
  v39 = *(v3 + 272);
  v40 = *(v3 + 280);
  LOBYTE(v55) = 18;
  sub_10002ECDC();
  v41 = *(v3 + 288);
  v42 = *(v3 + 296);
  LOBYTE(v55) = 19;
  sub_10002ECDC();
  v43 = *(v3 + 304);
  v44 = *(v3 + 312);
  LOBYTE(v55) = 20;
  sub_10002ED0C();
  v45 = *(v3 + 320);
  v46 = *(v3 + 328);
  LOBYTE(v55) = 21;
  sub_10002ED2C();
  v47 = *(v3 + 336);
  v48 = *(v3 + 344);
  LOBYTE(v55) = 22;
  sub_10002ECDC();
  *&v55 = *(v3 + 352);
  v53[0] = 23;
  sub_10002ED1C();
  v49 = *(v3 + 224);
  v50 = *(v3 + 232);
  LOBYTE(v55) = 24;
  sub_10002ED2C();
  return (*(v52 + 8))(v9, v5);
}

void *sub_1000106D4(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_100010718()
{
  result = qword_100042F08;
  if (!qword_100042F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100042F08);
  }

  return result;
}

uint64_t sub_10001076C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C0EC(&qword_100042F20, &qword_100034150);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000107DC()
{
  result = qword_100042F28;
  if (!qword_100042F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100042F28);
  }

  return result;
}

void *BasicMessageDictionary.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_100010D48(a1, __src);
  if (!v2)
  {
    return memcpy(a2, __src, 0x168uLL);
  }

  return result;
}

uint64_t BasicMessageDictionary.CodingKeys.rawValue.getter(char a1)
{
  result = 30320;
  switch(a1)
  {
    case 1:
      result = 30311;
      break;
    case 2:
      result = 6580583;
      break;
    case 3:
      result = 110;
      break;
    case 4:
      result = 112;
      break;
    case 5:
      result = 115;
      break;
    case 6:
      result = 116;
      break;
    case 7:
      result = 120;
      break;
    case 8:
      result = 30825;
      break;
    case 9:
      result = 117;
      break;
    case 10:
      result = 97;
      break;
    case 11:
      result = 808280425;
      break;
    case 12:
      result = 28786;
      break;
    case 13:
      result = 26484;
      break;
    case 14:
      result = 6711156;
      break;
    case 15:
      result = 6580578;
      break;
    case 16:
      result = 6910829;
      break;
    case 17:
      result = 7630177;
      break;
    case 18:
      result = 7040353;
      break;
    case 19:
      result = 6712673;
      break;
    case 20:
      result = 0x636C726D61;
      break;
    case 21:
      result = 0x6E6C726D61;
      break;
    case 22:
      result = 6647137;
      break;
    case 23:
      result = 26226;
      break;
    case 24:
      result = 1684628084;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100010A98(char *a1, char *a2)
{
  v2 = *a2;
  v3 = BasicMessageDictionary.CodingKeys.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == BasicMessageDictionary.CodingKeys.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_10002ED5C();
  }

  return v8 & 1;
}

Swift::Int sub_100010B20()
{
  v1 = *v0;
  sub_10002EDCC();
  BasicMessageDictionary.CodingKeys.rawValue.getter(v1);
  sub_10002E8FC();

  return sub_10002EDEC();
}

uint64_t sub_100010B84()
{
  BasicMessageDictionary.CodingKeys.rawValue.getter(*v0);
  sub_10002E8FC();
}

Swift::Int sub_100010BD8()
{
  v1 = *v0;
  sub_10002EDCC();
  BasicMessageDictionary.CodingKeys.rawValue.getter(v1);
  sub_10002E8FC();

  return sub_10002EDEC();
}

uint64_t sub_100010C38@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = _s22MessagesAirlockService22BasicMessageDictionaryV10CodingKeysO8rawValueAESgSS_tcfC_0();
  *a2 = result;
  return result;
}

uint64_t sub_100010C68@<X0>(uint64_t *a1@<X8>)
{
  result = BasicMessageDictionary.CodingKeys.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100010C9C@<X0>(_BYTE *a1@<X8>)
{
  result = _s22MessagesAirlockService22BasicMessageDictionaryV10CodingKeysO8rawValueAESgSS_tcfC_0();
  *a1 = result;
  return result;
}

uint64_t sub_100010CD0(uint64_t a1)
{
  v2 = sub_100010718();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100010D0C(uint64_t a1)
{
  v2 = sub_100010718();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_100010D48@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_10000C0EC(&qword_100042F48, qword_1000344C8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v52 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v168 = a1;
  sub_1000106D4(a1, v10);
  sub_100010718();
  sub_10002EDFC();
  if (v2)
  {
    return sub_1000121A8(v168);
  }

  v97 = a2;
  LOBYTE(v99) = 0;
  v96 = sub_10002EC9C();
  v163 = v12 & 1;
  LOBYTE(v99) = 1;
  v14 = sub_10002EC6C();
  v95 = v15;
  LOBYTE(v99) = 2;
  v16 = sub_10002EC6C();
  v94 = v17;
  v91 = v16;
  v92 = v14;
  LOBYTE(v99) = 3;
  v90 = sub_10002EC6C();
  v93 = v18;
  sub_10000C0EC(&qword_100042F10, &qword_100034148);
  LOBYTE(v98[0]) = 4;
  v89 = sub_1000121F4(&qword_100042F50);
  sub_10002ECAC();
  v87 = v99;
  LOBYTE(v99) = 5;
  v19 = sub_10002EC6C();
  v86 = v20;
  v21 = v19;
  LOBYTE(v99) = 6;
  v85 = 0;
  v22 = sub_10002EC6C();
  v84 = v23;
  LOBYTE(v99) = 7;
  v72 = sub_10002EC6C();
  v83 = v24;
  LOBYTE(v99) = 8;
  v71 = sub_10002EC6C();
  v88 = 0;
  v25 = v22;
  v82 = v26;
  LOBYTE(v99) = 9;
  v27 = sub_10002EC7C();
  v88 = 0;
  v28 = v27;
  LOBYTE(v99) = 10;
  v70 = sub_10002EC7C();
  v88 = 0;
  LOBYTE(v98[0]) = 11;
  v76 = sub_100012260();
  v29 = v88;
  sub_10002ECAC();
  v88 = v29;
  if (v29)
  {
    (*(v6 + 8))(v9, v5);
    LODWORD(v92) = 0;
    LODWORD(v97) = 0;
    LODWORD(v96) = 0;
    v30 = v85;
    sub_1000121A8(v168);

    if (!v30)
    {
    }

    v31 = v96;

    if (v92)
    {
    }

    if (v97)
    {
    }

    if (v31)
    {
    }
  }

  else
  {
    v80 = v99;
    v81 = v100;
    LOBYTE(v99) = 12;
    v69 = sub_10002EC8C();
    v88 = 0;
    v165 = v32 & 1;
    LOBYTE(v99) = 13;
    v68 = sub_10002EC6C();
    v79 = v33;
    v88 = 0;
    LOBYTE(v99) = 14;
    v67 = sub_10002EC6C();
    v78 = v34;
    v88 = 0;
    LOBYTE(v99) = 15;
    v66 = sub_10002EC6C();
    v77 = v35;
    v88 = 0;
    LOBYTE(v98[0]) = 16;
    sub_10002ECAC();
    v88 = 0;
    v75 = v100;
    v76 = v99;
    LOBYTE(v99) = 17;
    v65 = sub_10002EC8C();
    v88 = 0;
    v159 = v36 & 1;
    LOBYTE(v99) = 18;
    v64 = sub_10002EC6C();
    v74 = v37;
    v88 = 0;
    LOBYTE(v99) = 19;
    v63 = sub_10002EC6C();
    v73 = v38;
    v88 = 0;
    LOBYTE(v99) = 20;
    v62 = sub_10002EC9C();
    v88 = 0;
    v157 = v39 & 1;
    LOBYTE(v99) = 21;
    v61 = sub_10002ECBC();
    v88 = 0;
    v155 = v40 & 1;
    LOBYTE(v99) = 22;
    v60 = sub_10002EC6C();
    v85 = v41;
    v88 = 0;
    LOBYTE(v98[0]) = 23;
    sub_10002ECAC();
    v88 = 0;
    v89 = v99;
    v153 = 24;
    v59 = sub_10002ECBC();
    v88 = 0;
    v43 = v42;
    (*(v6 + 8))(v9, v5);
    v161 = v43 & 1;
    v98[0] = v87;
    v98[1] = v21;
    v55 = v25;
    v56 = v21;
    v98[2] = v86;
    v98[3] = v25;
    v98[4] = v84;
    v98[5] = v72;
    v98[6] = v83;
    v98[7] = v71;
    v98[8] = v82;
    LOBYTE(v98[9]) = v28;
    BYTE1(v98[9]) = v70;
    *(&v98[9] + 2) = v166;
    HIWORD(v98[9]) = v167;
    v98[10] = v80;
    v98[11] = v81;
    v98[12] = v69;
    v53 = v165;
    v54 = v28;
    LOBYTE(v98[13]) = v165;
    HIDWORD(v98[13]) = *&v164[3];
    *(&v98[13] + 1) = *v164;
    v98[14] = v68;
    v98[15] = v79;
    v98[16] = v67;
    v98[17] = v78;
    v98[18] = v96;
    v58 = v163;
    LOBYTE(v98[19]) = v163;
    *(&v98[19] + 1) = *v162;
    HIDWORD(v98[19]) = *&v162[3];
    v98[20] = v92;
    v98[21] = v95;
    v98[22] = v91;
    v98[23] = v94;
    v98[24] = v90;
    v98[25] = v93;
    v98[26] = v66;
    v98[27] = v77;
    v98[28] = v59;
    v57 = v43 & 1;
    LOBYTE(v98[29]) = v43 & 1;
    *(&v98[29] + 1) = *v160;
    HIDWORD(v98[29]) = *&v160[3];
    v98[30] = v76;
    v98[31] = v75;
    v98[32] = v65;
    *(&v98[33] + 1) = *v158;
    *(&v98[39] + 1) = *v156;
    v44 = v159;
    LOBYTE(v98[33]) = v159;
    HIDWORD(v98[33]) = *&v158[3];
    v98[34] = v64;
    v45 = v73;
    v98[35] = v74;
    v98[36] = v63;
    v98[37] = v73;
    v98[38] = v62;
    *(&v98[41] + 1) = *v154;
    v46 = v157;
    LOBYTE(v98[39]) = v157;
    HIDWORD(v98[39]) = *&v156[3];
    v48 = v60;
    v47 = v61;
    v98[40] = v61;
    HIDWORD(v98[41]) = *&v154[3];
    v49 = v155;
    LOBYTE(v98[41]) = v155;
    v98[42] = v60;
    v50 = v85;
    v98[43] = v85;
    v51 = v89;
    v98[44] = v89;
    sub_1000122B4(v98, &v99);
    sub_1000121A8(v168);
    v99 = v87;
    v100 = v56;
    v101 = v86;
    v102 = v55;
    v103 = v84;
    v104 = v72;
    v105 = v83;
    v106 = v71;
    v107 = v82;
    v108 = v54;
    v109 = v70;
    v112 = v80;
    v113 = v81;
    v114 = v69;
    v115 = v53;
    v117 = v68;
    v118 = v79;
    v119 = v67;
    v120 = v78;
    v110 = v166;
    v111 = v167;
    *&v116[3] = *&v164[3];
    *v116 = *v164;
    v121 = v96;
    v122 = v58;
    *&v123[3] = *&v162[3];
    *v123 = *v162;
    v124 = v92;
    v125 = v95;
    v126 = v91;
    v127 = v94;
    v128 = v90;
    v129 = v93;
    v130 = v66;
    v131 = v77;
    v132 = v59;
    v133 = v57;
    *v134 = *v160;
    *&v134[3] = *&v160[3];
    v135 = v76;
    v136 = v75;
    v137 = v65;
    v138 = v44;
    *v139 = *v158;
    *&v139[3] = *&v158[3];
    v140 = v64;
    v141 = v74;
    v142 = v63;
    v143 = v45;
    v144 = v62;
    v145 = v46;
    *v146 = *v156;
    *&v146[3] = *&v156[3];
    v147 = v47;
    v148 = v49;
    *v149 = *v154;
    *&v149[3] = *&v154[3];
    v150 = v48;
    v151 = v50;
    v152 = v51;
    sub_10000EF34(&v99);
    return memcpy(v97, v98, 0x168uLL);
  }

  return result;
}

uint64_t _s22MessagesAirlockService22BasicMessageDictionaryV10CodingKeysO8rawValueAESgSS_tcfC_0()
{
  v0 = sub_10002ED6C();

  if (v0 >= 0x19)
  {
    return 25;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_100011DD0()
{
  result = qword_100042F30;
  if (!qword_100042F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100042F30);
  }

  return result;
}

unint64_t sub_100011E28()
{
  result = qword_100042F38;
  if (!qword_100042F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100042F38);
  }

  return result;
}

unint64_t sub_100011E80()
{
  result = qword_100042F40;
  if (!qword_100042F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100042F40);
  }

  return result;
}

uint64_t sub_100011ED4(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_100011EF0(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100011F20(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 360))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_100011F7C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 328) = 0u;
    *(result + 344) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 360) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 360) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BasicMessageDictionary.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE8)
  {
    goto LABEL_17;
  }

  if (a2 + 24 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 24) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 24;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 24;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 24;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x19;
  v8 = v6 - 25;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BasicMessageDictionary.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 24 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 24) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE8)
  {
    v4 = 0;
  }

  if (a2 > 0xE7)
  {
    v5 = ((a2 - 232) >> 8) + 1;
    *result = a2 + 24;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 24;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1000121A8(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_1000121F4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_10000E724(&qword_100042F10, &qword_100034148);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100012260()
{
  result = qword_100042F58;
  if (!qword_100042F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100042F58);
  }

  return result;
}

unint64_t sub_1000122FC(uint64_t a1)
{
  result = sub_10000C188();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100012328()
{
  result = qword_100042F60;
  if (!qword_100042F60)
  {
    sub_10002E17C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100042F60);
  }

  return result;
}

uint64_t BasicMessageSummaryInfoDictionary.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a4;
  v14[1] = a5;
  v7 = sub_10000C0EC(&qword_100042F68, &qword_100034570);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v14 - v10;
  v12 = a1[4];
  sub_1000106D4(a1, a1[3]);
  sub_100012544();
  sub_10002EE0C();
  v16 = 0;
  sub_10002ECFC();
  if (!v5)
  {
    v15 = 1;
    sub_10002ECDC();
  }

  return (*(v8 + 8))(v11, v7);
}

unint64_t sub_100012544()
{
  result = qword_100042F70;
  if (!qword_100042F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100042F70);
  }

  return result;
}

uint64_t BasicMessageSummaryInfoDictionary.init(from:)(uint64_t *a1)
{
  result = sub_1000129B8(a1);
  if (v1)
  {
    return v3 & 1;
  }

  return result;
}

uint64_t sub_1000125D0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1000129B8(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5 & 1;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7;
  }

  return result;
}

MessagesAirlockService::BasicMessageSummaryInfoDictionary::CodingKeys_optional __swiftcall BasicMessageSummaryInfoDictionary.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v6._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._rawValue = &off_10003DAD0;
  v6._object = object;
  v3 = sub_10002EC5C(v2, v6);

  if (v3 == 1)
  {
    v4.value = MessagesAirlockService_BasicMessageSummaryInfoDictionary_CodingKeys_summary;
  }

  else
  {
    v4.value = MessagesAirlockService_BasicMessageSummaryInfoDictionary_CodingKeys_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t BasicMessageSummaryInfoDictionary.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 7564641;
  }

  else
  {
    return 6516065;
  }
}

uint64_t sub_1000126AC(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 7564641;
  }

  else
  {
    v2 = 6516065;
  }

  if (*a2)
  {
    v3 = 7564641;
  }

  else
  {
    v3 = 6516065;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_10002ED5C();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

Swift::Int sub_100012720()
{
  v1 = *v0;
  sub_10002EDCC();
  sub_10002E8FC();

  return sub_10002EDEC();
}

uint64_t sub_100012784()
{
  *v0;
  sub_10002E8FC();
}

Swift::Int sub_1000127CC()
{
  v1 = *v0;
  sub_10002EDCC();
  sub_10002E8FC();

  return sub_10002EDEC();
}

uint64_t sub_10001282C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_10003DAD0;
  v8._object = v3;
  v5 = sub_10002EC5C(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_10001288C(uint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 7564641;
  }

  else
  {
    v2 = 6516065;
  }

  *a1 = v2;
  a1[1] = 0xE300000000000000;
}

uint64_t sub_1000128B0()
{
  if (*v0)
  {
    return 7564641;
  }

  else
  {
    return 6516065;
  }
}

uint64_t sub_1000128D0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v9._countAndFlagsBits = a1;
  v5._rawValue = &off_10003DAD0;
  v9._object = a2;
  v6 = sub_10002EC5C(v5, v9);

  if (v6 == 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  if (!v6)
  {
    v8 = 0;
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100012940(uint64_t a1)
{
  v2 = sub_100012544();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001297C(uint64_t a1)
{
  v2 = sub_100012544();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000129B8(uint64_t *a1)
{
  v3 = sub_10000C0EC(&qword_100042F90, &unk_100034760);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10 - v6;
  v8 = a1[3];
  sub_1000106D4(a1, v8);
  sub_100012544();
  sub_10002EDFC();
  if (!v1)
  {
    v12 = 0;
    v8 = sub_10002EC8C();
    v11 = 1;
    sub_10002EC6C();
    (*(v4 + 8))(v7, v3);
  }

  sub_1000121A8(a1);
  return v8;
}

unint64_t sub_100012B74()
{
  result = qword_100042F78;
  if (!qword_100042F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100042F78);
  }

  return result;
}

unint64_t sub_100012BCC()
{
  result = qword_100042F80;
  if (!qword_100042F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100042F80);
  }

  return result;
}

unint64_t sub_100012C24()
{
  result = qword_100042F88;
  if (!qword_100042F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100042F88);
  }

  return result;
}

__n128 sub_100012C78(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100012C84(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_100012CE0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BasicMessageSummaryInfoDictionary.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BasicMessageSummaryInfoDictionary.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100012EA4@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SMSDictionary() + 32));
  v4 = *v3;
  v5 = v3[1];
  v6 = *v3 == 7564659 && v5 == 0xE300000000000000;
  if (v6 || (sub_10002ED5C() & 1) != 0)
  {
    v7 = &enum case for SMSMessage.SMSType.sms(_:);
LABEL_7:
    v8 = *v7;
    v9 = sub_10002E13C();
    return (*(*(v9 - 8) + 104))(a1, v8, v9);
  }

  v11 = v4 == 7564653 && v5 == 0xE300000000000000;
  if (v11 || (sub_10002ED5C() & 1) != 0)
  {
    v7 = &enum case for SMSMessage.SMSType.mms(_:);
    goto LABEL_7;
  }

  v12 = v4 == 0x6E776F6E6B6E75 && v5 == 0xE700000000000000;
  if (v12 || (sub_10002ED5C() & 1) != 0)
  {
    v7 = &enum case for SMSMessage.SMSType.unknown(_:);
    goto LABEL_7;
  }

  sub_10002E7DC();
  sub_100015698(&qword_100042EA8, &type metadata accessor for Explosion);
  swift_allocError();
  sub_10002E7CC();
  return swift_willThrow();
}

uint64_t sub_100013098(void *a1)
{
  v3 = v1;
  v5 = sub_10000C0EC(&qword_100043108, &qword_1000347F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v82 - v8;
  v10 = a1[4];
  sub_1000106D4(a1, a1[3]);
  sub_100015524();
  sub_10002EE0C();
  v11 = *v3;
  v12 = *(v3 + 8);
  LOBYTE(v83) = 0;
  sub_10002ECFC();
  if (!v2)
  {
    v13 = type metadata accessor for SMSDictionary();
    v14 = v13[5];
    LOBYTE(v83) = 1;
    sub_10002E11C();
    sub_100015698(&qword_100043110, &type metadata accessor for SMSMessage.FilterSubCategoryType);
    sub_10002ED1C();
    v15 = (v3 + v13[6]);
    v16 = *v15;
    v17 = v15[1];
    LOBYTE(v83) = 2;
    sub_10002ECDC();
    v18 = (v3 + v13[7]);
    v19 = *v18;
    v20 = v18[1];
    LOBYTE(v83) = 3;
    sub_10002ED3C();
    v21 = (v3 + v13[8]);
    v22 = *v21;
    v23 = v21[1];
    LOBYTE(v83) = 4;
    sub_10002ED3C();
    v83 = *(v3 + v13[9]);
    HIBYTE(v82) = 5;
    sub_10000C0EC(&qword_100042F10, &qword_100034148);
    sub_1000121F4(&qword_100042F18);
    sub_10002ED1C();
    v24 = v13[10];
    LOBYTE(v83) = 6;
    sub_10002DEEC();
    sub_100015698(&qword_100043118, &type metadata accessor for Date);
    sub_10002ED1C();
    v25 = (v3 + v13[11]);
    v26 = *v25;
    v27 = v25[1];
    LOBYTE(v83) = 7;
    sub_10002ECDC();
    v28 = (v3 + v13[12]);
    v29 = *v28;
    v30 = *(v28 + 8);
    LOBYTE(v83) = 8;
    sub_10002ECFC();
    v31 = (v3 + v13[13]);
    v32 = *v31;
    v33 = v31[1];
    LOBYTE(v83) = 9;
    sub_10002ECDC();
    v34 = (v3 + v13[14]);
    v35 = *v34;
    v36 = v34[1];
    LOBYTE(v83) = 10;
    sub_10002ECDC();
    v37 = (v3 + v13[15]);
    v38 = *v37;
    v39 = v37[1];
    LOBYTE(v83) = 11;
    sub_10002ECDC();
    v40 = (v3 + v13[16]);
    v41 = *v40;
    v42 = v40[1];
    LOBYTE(v83) = 12;
    sub_10002ECDC();
    v43 = (v3 + v13[17]);
    v44 = *v43;
    v45 = v43[1];
    LOBYTE(v83) = 13;
    sub_10002ECDC();
    v46 = (v3 + v13[18]);
    v47 = *v46;
    v48 = v46[1];
    LOBYTE(v83) = 14;
    sub_10002ECDC();
    v49 = (v3 + v13[19]);
    v50 = *v49;
    v51 = *(v49 + 8);
    LOBYTE(v83) = 15;
    sub_10002ECFC();
    v52 = (v3 + v13[20]);
    v53 = *v52;
    v54 = v52[1];
    LOBYTE(v83) = 16;
    sub_10002ECDC();
    v55 = (v3 + v13[21]);
    v56 = *v55;
    v57 = v55[1];
    LOBYTE(v83) = 17;
    sub_10002ECDC();
    v58 = (v3 + v13[22]);
    v59 = *v58;
    v60 = v58[1];
    LOBYTE(v83) = 18;
    sub_10002ECDC();
    v83 = *(v3 + v13[23]);
    HIBYTE(v82) = 19;
    sub_10000C0EC(&qword_100043030, qword_100034790);
    sub_1000156E0(&qword_100043120, sub_100015758);
    sub_10002ED1C();
    v61 = *(v3 + v13[24]);
    LOBYTE(v83) = 20;
    sub_10002ECEC();
    v62 = *(v3 + v13[25]);
    LOBYTE(v83) = 21;
    sub_10002ECEC();
    v63 = (v3 + v13[26]);
    v64 = *v63;
    v65 = v63[1];
    LOBYTE(v83) = 22;
    sub_10002ECDC();
    v66 = (v3 + v13[27]);
    v67 = *v66;
    v68 = *(v66 + 8);
    LOBYTE(v83) = 23;
    sub_10002ED2C();
    v69 = (v3 + v13[28]);
    v70 = *v69;
    v71 = v69[1];
    LOBYTE(v83) = 24;
    sub_10002ECDC();
    v72 = (v3 + v13[29]);
    v73 = *v72;
    v74 = v72[1];
    LOBYTE(v83) = 25;
    sub_10002ECDC();
    v75 = (v3 + v13[30]);
    v76 = *v75;
    v77 = v75[1];
    LOBYTE(v83) = 26;
    sub_10002ECDC();
    v78 = (v3 + v13[31]);
    v79 = *v78;
    v80 = v78[1];
    LOBYTE(v83) = 27;
    sub_10002ECDC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100013824@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v145 = a2;
  v4 = sub_10000C0EC(&qword_100042E60, &qword_100033F98);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v144 - v6;
  v8 = sub_10000C0EC(&qword_100042E68, &qword_100033FA0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v144 - v10;
  v147 = sub_10000C0EC(&qword_1000430D8, &qword_1000347E8);
  v146 = *(v147 - 8);
  v12 = *(v146 + 64);
  __chkstk_darwin(v147);
  v14 = &v144 - v13;
  v15 = type metadata accessor for SMSDictionary();
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15);
  v19 = (&v144 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *(v17 + 20);
  v21 = sub_10002E11C();
  v22 = *(*(v21 - 8) + 56);
  v166 = v20;
  v22(v19 + v20, 1, 1, v21);
  v164 = v15;
  v23 = *(v15 + 40);
  v24 = sub_10002DEEC();
  v25 = *(*(v24 - 8) + 56);
  v165 = v19;
  v163 = v23;
  v25(v19 + v23, 1, 1, v24);
  v27 = a1[3];
  v26 = a1[4];
  v156 = a1;
  sub_1000106D4(a1, v27);
  sub_100015524();
  v148 = v14;
  sub_10002EDFC();
  if (v2)
  {
    v167 = v2;
    v28 = 0;
    v29 = 0;
    v149 = 0;
    v150 = 0;
    v151 = 0;
    v152 = 0;
    v153 = 0;
    v154 = 0;
    v157 = 0;
    v158 = 0;
    v159 = 0;
    v160 = 0;
    v161 = 0;
    v162 = 0;
    v155 = 0;
    v31 = v164;
    v30 = v165;
    v32 = v163;
    goto LABEL_15;
  }

  LOBYTE(v169) = 0;
  v33 = v147;
  v34 = sub_10002EC8C();
  v167 = 0;
  v32 = v163;
  v30 = v165;
  *v165 = v34;
  *(v30 + 8) = v35 & 1;
  LOBYTE(v169) = 1;
  sub_100015698(&qword_1000430E8, &type metadata accessor for SMSMessage.FilterSubCategoryType);
  v36 = v167;
  sub_10002ECAC();
  v167 = v36;
  if (v36)
  {
    (*(v146 + 8))(v148, v33);
    v28 = 0;
    v29 = 0;
    v149 = 0;
    v150 = 0;
    v151 = 0;
    v152 = 0;
    v153 = 0;
    v154 = 0;
    v157 = 0;
    v158 = 0;
    v159 = 0;
    v160 = 0;
    v161 = 0;
    v162 = 0;
    v155 = 0;
    v31 = v164;
    goto LABEL_15;
  }

  sub_100015578(v11, v30 + v166, &qword_100042E68, &qword_100033FA0);
  LOBYTE(v169) = 2;
  v37 = v167;
  v38 = sub_10002EC6C();
  v31 = v164;
  if (v37)
  {
    v167 = v37;
    (*(v146 + 8))(v148, v33);
    v28 = 0;
    v29 = 0;
    v149 = 0;
    v150 = 0;
    v151 = 0;
    v152 = 0;
    v153 = 0;
    v154 = 0;
    v157 = 0;
    v158 = 0;
    v159 = 0;
    v160 = 0;
    v161 = 0;
    v162 = 0;
    v155 = 0;
    goto LABEL_15;
  }

  v40 = (v30 + v164[6]);
  *v40 = v38;
  v40[1] = v39;
  v144 = v39;
  LOBYTE(v169) = 3;
  v41 = sub_10002ECCC();
  v42 = (v30 + v31[7]);
  *v42 = v41;
  v42[1] = v43;
  LOBYTE(v169) = 4;
  v44 = sub_10002ECCC();
  v167 = 0;
  v45 = (v30 + v31[8]);
  *v45 = v44;
  v45[1] = v46;
  sub_10000C0EC(&qword_100042F10, &qword_100034148);
  v168 = 5;
  sub_1000121F4(&qword_100042F50);
  v47 = v167;
  sub_10002ECAC();
  v167 = v47;
  if (v47)
  {
    (*(v146 + 8))(v148, v33);
    v149 = 0;
    v150 = 0;
    v151 = 0;
    v152 = 0;
    v153 = 0;
    v154 = 0;
    v157 = 0;
    v158 = 0;
    v159 = 0;
    v160 = 0;
    v161 = 0;
    v162 = 0;
    v155 = 0;
LABEL_14:
    v28 = 1;
    v29 = 1;
    goto LABEL_15;
  }

  v48 = v31[9];
  v155 = v169;
  *(v30 + v48) = v169;
  LOBYTE(v169) = 6;
  sub_100015698(&qword_1000430F0, &type metadata accessor for Date);
  v49 = v167;
  sub_10002ECAC();
  v167 = v49;
  if (v49)
  {
    v50 = v146;
LABEL_13:
    (*(v50 + 8))(v148, v33);
    v149 = 0;
    v150 = 0;
    v151 = 0;
    v152 = 0;
    v153 = 0;
    v154 = 0;
    v157 = 0;
    v158 = 0;
    v159 = 0;
    v160 = 0;
    v161 = 0;
    v162 = 0;
    goto LABEL_14;
  }

  sub_100015578(v7, v30 + v32, &qword_100042E60, &qword_100033F98);
  LOBYTE(v169) = 7;
  v51 = v167;
  v52 = sub_10002EC6C();
  v50 = v146;
  if (v51)
  {
    v167 = v51;
    goto LABEL_13;
  }

  v57 = (v30 + v31[11]);
  *v57 = v52;
  v57[1] = v53;
  v154 = v53;
  LOBYTE(v169) = 8;
  v58 = sub_10002EC8C();
  v167 = 0;
  v59 = v30 + v31[12];
  *v59 = v58;
  v59[8] = v60 & 1;
  LOBYTE(v169) = 9;
  v61 = v167;
  v62 = sub_10002EC6C();
  v162 = v63;
  v167 = v61;
  if (v61)
  {
    (*(v146 + 8))(v148, v147);
    v149 = 0;
    v150 = 0;
    v151 = 0;
    v152 = 0;
    v153 = 0;
    v157 = 0;
    v158 = 0;
    v159 = 0;
    v160 = 0;
    v161 = 0;
    v162 = 0;
  }

  else
  {
    v64 = (v165 + v164[13]);
    v65 = v162;
    *v64 = v62;
    v64[1] = v65;
    LOBYTE(v169) = 10;
    v66 = v167;
    v67 = sub_10002EC6C();
    v161 = v68;
    v167 = v66;
    if (v66)
    {
      (*(v146 + 8))(v148, v147);
      v149 = 0;
      v150 = 0;
      v151 = 0;
      v152 = 0;
      v153 = 0;
      v157 = 0;
      v158 = 0;
      v159 = 0;
      v160 = 0;
      v161 = 0;
    }

    else
    {
      v69 = (v165 + v164[14]);
      v70 = v161;
      *v69 = v67;
      v69[1] = v70;
      LOBYTE(v169) = 11;
      v71 = v167;
      v72 = sub_10002EC6C();
      v160 = v73;
      v167 = v71;
      if (v71)
      {
        (*(v146 + 8))(v148, v147);
        v149 = 0;
        v150 = 0;
        v151 = 0;
        v152 = 0;
        v153 = 0;
        v157 = 0;
        v158 = 0;
        v159 = 0;
        v160 = 0;
      }

      else
      {
        v74 = (v165 + v164[15]);
        v75 = v160;
        *v74 = v72;
        v74[1] = v75;
        LOBYTE(v169) = 12;
        v76 = v167;
        v77 = sub_10002EC6C();
        v159 = v78;
        v167 = v76;
        if (v76)
        {
          (*(v146 + 8))(v148, v147);
          v149 = 0;
          v150 = 0;
          v151 = 0;
          v152 = 0;
          v153 = 0;
          v157 = 0;
          v158 = 0;
          v159 = 0;
        }

        else
        {
          v79 = (v165 + v164[16]);
          v80 = v159;
          *v79 = v77;
          v79[1] = v80;
          LOBYTE(v169) = 13;
          v81 = v167;
          v82 = sub_10002EC6C();
          v158 = v83;
          v167 = v81;
          if (v81)
          {
            (*(v146 + 8))(v148, v147);
            v149 = 0;
            v150 = 0;
            v151 = 0;
            v152 = 0;
            v153 = 0;
            v157 = 0;
            v158 = 0;
          }

          else
          {
            v84 = (v165 + v164[17]);
            v85 = v158;
            *v84 = v82;
            v84[1] = v85;
            LOBYTE(v169) = 14;
            v86 = v167;
            v87 = sub_10002EC6C();
            v157 = v88;
            v167 = v86;
            if (v86)
            {
              (*(v146 + 8))(v148, v147);
              v149 = 0;
              v150 = 0;
              v151 = 0;
              v152 = 0;
              v153 = 0;
              v157 = 0;
            }

            else
            {
              v89 = (v165 + v164[18]);
              v90 = v157;
              *v89 = v87;
              v89[1] = v90;
              LOBYTE(v169) = 15;
              v91 = v167;
              v92 = sub_10002EC8C();
              v167 = v91;
              if (v91)
              {
                goto LABEL_34;
              }

              v94 = v165 + v164[19];
              *v94 = v92;
              v94[8] = v93 & 1;
              LOBYTE(v169) = 16;
              v95 = v167;
              v96 = sub_10002EC6C();
              v153 = v97;
              v167 = v95;
              if (v95)
              {
LABEL_34:
                (*(v146 + 8))(v148, v147);
                v149 = 0;
                v150 = 0;
                v151 = 0;
                v152 = 0;
                v153 = 0;
              }

              else
              {
                v98 = (v165 + v164[20]);
                v99 = v153;
                *v98 = v96;
                v98[1] = v99;
                LOBYTE(v169) = 17;
                v100 = v167;
                v101 = sub_10002EC6C();
                v152 = v102;
                v167 = v100;
                if (v100)
                {
                  (*(v146 + 8))(v148, v147);
                  v149 = 0;
                  v150 = 0;
                  v151 = 0;
                  v152 = 0;
                }

                else
                {
                  v103 = (v165 + v164[21]);
                  v104 = v152;
                  *v103 = v101;
                  v103[1] = v104;
                  LOBYTE(v169) = 18;
                  v105 = v167;
                  v106 = sub_10002EC6C();
                  v151 = v107;
                  v167 = v105;
                  if (v105)
                  {
                    (*(v146 + 8))(v148, v147);
                    v149 = 0;
                    v150 = 0;
                    v151 = 0;
                  }

                  else
                  {
                    v108 = (v165 + v164[22]);
                    v109 = v151;
                    *v108 = v106;
                    v108[1] = v109;
                    sub_10000C0EC(&qword_100043030, qword_100034790);
                    v168 = 19;
                    sub_1000156E0(&qword_1000430F8, sub_1000155E0);
                    v110 = v167;
                    sub_10002ECAC();
                    v167 = v110;
                    if (v110)
                    {
                      (*(v146 + 8))(v148, v147);
                      v149 = 0;
                      v150 = 0;
                    }

                    else
                    {
                      v111 = v164[23];
                      v150 = v169;
                      *(v165 + v111) = v169;
                      LOBYTE(v169) = 20;
                      v112 = v167;
                      v113 = sub_10002EC7C();
                      v167 = v112;
                      if (v112)
                      {
                        goto LABEL_45;
                      }

                      *(v165 + v164[24]) = v113;
                      LOBYTE(v169) = 21;
                      v114 = v167;
                      v115 = sub_10002EC7C();
                      v167 = v114;
                      if (v114 || (*(v165 + v164[25]) = v115, LOBYTE(v169) = 22, v116 = v167, v117 = sub_10002EC6C(), v149 = v118, (v167 = v116) != 0))
                      {
LABEL_45:
                        (*(v146 + 8))(v148, v147);
                        v149 = 0;
                      }

                      else
                      {
                        v119 = (v165 + v164[26]);
                        v120 = v149;
                        *v119 = v117;
                        v119[1] = v120;
                        LOBYTE(v169) = 23;
                        v121 = v167;
                        v122 = sub_10002ECBC();
                        v167 = v121;
                        if (!v121)
                        {
                          v124 = v165 + v164[27];
                          *v124 = v122;
                          v124[8] = v123 & 1;
                          LOBYTE(v169) = 24;
                          v125 = v167;
                          v126 = sub_10002EC6C();
                          v167 = v125;
                          if (!v125)
                          {
                            v128 = (v165 + v164[28]);
                            *v128 = v126;
                            v128[1] = v127;
                            LOBYTE(v169) = 25;
                            v129 = v167;
                            v130 = sub_10002EC6C();
                            v167 = v129;
                            if (!v129)
                            {
                              v132 = (v165 + v164[29]);
                              *v132 = v130;
                              v132[1] = v131;
                              LOBYTE(v169) = 26;
                              v133 = v167;
                              v134 = sub_10002EC6C();
                              v167 = v133;
                              if (!v133)
                              {
                                v136 = (v165 + v164[30]);
                                *v136 = v134;
                                v136[1] = v135;
                                LOBYTE(v169) = 27;
                                v137 = v167;
                                v138 = sub_10002EC6C();
                                v167 = v137;
                                if (!v137)
                                {
                                  v140 = v138;
                                  v141 = v139;
                                  v142 = v165;
                                  v143 = (v165 + v164[31]);
                                  (*(v146 + 8))(v148, v147);
                                  *v143 = v140;
                                  v143[1] = v141;
                                  sub_100015634(v142, v145);
                                  sub_1000121A8(v156);
                                  return sub_10000E664(v142);
                                }
                              }
                            }
                          }
                        }

                        (*(v146 + 8))(v148, v147);
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v28 = 1;
  v29 = 1;
  v31 = v164;
  v30 = v165;
  v32 = v163;
LABEL_15:
  sub_1000121A8(v156);
  sub_10000E76C(v30 + v166, &qword_100042E68, &qword_100033FA0);

  if (v28)
  {
    v54 = *(v30 + v31[7] + 8);
  }

  if (v29)
  {
    v55 = *(v30 + v31[8] + 8);
  }

  sub_10000E76C(v30 + v32, &qword_100042E60, &qword_100033F98);
}

uint64_t sub_100014A34(char a1)
{
  result = 6517599;
  switch(a1)
  {
    case 1:
      result = 1668510559;
      break;
    case 2:
      result = 29283;
      break;
    case 3:
      result = 22131;
      break;
    case 4:
      result = 109;
      break;
    case 5:
      result = 25970;
      break;
    case 6:
      result = 119;
      break;
    case 7:
      result = 104;
      break;
    case 8:
      result = 25449;
      break;
    case 9:
      result = 99;
      break;
    case 10:
      result = 28515;
      break;
    case 11:
      result = 25955;
      break;
    case 12:
      result = 29539;
      break;
    case 13:
      result = 97;
      break;
    case 14:
      result = 98;
      break;
    case 15:
      result = 108;
      break;
    case 16:
      result = 110;
      break;
    case 17:
      result = 103;
      break;
    case 18:
      result = 26726;
      break;
    case 19:
      result = 107;
      break;
    case 20:
      result = 25453;
      break;
    case 21:
      result = 114;
      break;
    case 22:
      result = 7234918;
      break;
    case 23:
      result = 7299942;
      break;
    case 24:
      result = 1145664868;
      break;
    case 25:
      result = 7234659;
      break;
    case 26:
      result = 6907747;
      break;
    case 27:
      result = 1768383343;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100014C5C(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_100014A34(*a1);
  v5 = v4;
  if (v3 == sub_100014A34(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_10002ED5C();
  }

  return v8 & 1;
}

Swift::Int sub_100014CE4()
{
  v1 = *v0;
  sub_10002EDCC();
  sub_100014A34(v1);
  sub_10002E8FC();

  return sub_10002EDEC();
}

uint64_t sub_100014D48()
{
  sub_100014A34(*v0);
  sub_10002E8FC();
}

Swift::Int sub_100014D9C()
{
  v1 = *v0;
  sub_10002EDCC();
  sub_100014A34(v1);
  sub_10002E8FC();

  return sub_10002EDEC();
}

uint64_t sub_100014DFC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_100015A04();
  *a2 = result;
  return result;
}

uint64_t sub_100014E2C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100014A34(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100014E60@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100015A04();
  *a1 = result;
  return result;
}

uint64_t sub_100014E94(uint64_t a1)
{
  v2 = sub_100015524();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100014ED0(uint64_t a1)
{
  v2 = sub_100015524();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t type metadata accessor for SMSDictionary()
{
  result = qword_100042FF0;
  if (!qword_100042FF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100014F6C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_10000C0EC(&qword_100042E68, &qword_100033FA0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[7] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_10000C0EC(&qword_100042E60, &qword_100033F98);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[10];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_1000150C4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_10000C0EC(&qword_100042E68, &qword_100033FA0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7] + 8) = (a2 - 1);
  }

  else
  {
    v13 = sub_10000C0EC(&qword_100042E60, &qword_100033F98);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[10];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

void sub_100015208()
{
  sub_1000154D8(319, &qword_100043000);
  if (v0 <= 0x3F)
  {
    sub_100015430(319, &qword_100043008, &type metadata accessor for SMSMessage.FilterSubCategoryType);
    if (v1 <= 0x3F)
    {
      sub_1000154D8(319, &qword_100043010);
      if (v2 <= 0x3F)
      {
        sub_100015484(319, &qword_100043018, &qword_100042F10, &qword_100034148);
        if (v3 <= 0x3F)
        {
          sub_100015430(319, &qword_100043020, &type metadata accessor for Date);
          if (v4 <= 0x3F)
          {
            sub_100015484(319, &qword_100043028, &qword_100043030, qword_100034790);
            if (v5 <= 0x3F)
            {
              sub_1000154D8(319, &qword_100043038);
              if (v6 <= 0x3F)
              {
                sub_1000154D8(319, &unk_100043040);
                if (v7 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_100015430(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_10002EB7C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100015484(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_10000E724(a3, a4);
    v5 = sub_10002EB7C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1000154D8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_10002EB7C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_100015524()
{
  result = qword_1000430E0;
  if (!qword_1000430E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000430E0);
  }

  return result;
}

uint64_t sub_100015578(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000C0EC(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

unint64_t sub_1000155E0()
{
  result = qword_100043100;
  if (!qword_100043100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100043100);
  }

  return result;
}

uint64_t sub_100015634(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SMSDictionary();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100015698(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000156E0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000E724(&qword_100043030, qword_100034790);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100015758()
{
  result = qword_100043128;
  if (!qword_100043128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100043128);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SMSDictionary.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE5)
  {
    goto LABEL_17;
  }

  if (a2 + 27 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 27) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 27;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 27;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 27;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1C;
  v8 = v6 - 28;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SMSDictionary.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 27 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 27) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE5)
  {
    v4 = 0;
  }

  if (a2 > 0xE4)
  {
    v5 = ((a2 - 229) >> 8) + 1;
    *result = a2 + 27;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 27;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100015900()
{
  result = qword_100043130;
  if (!qword_100043130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100043130);
  }

  return result;
}

unint64_t sub_100015958()
{
  result = qword_100043138;
  if (!qword_100043138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100043138);
  }

  return result;
}

unint64_t sub_1000159B0()
{
  result = qword_100043140;
  if (!qword_100043140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100043140);
  }

  return result;
}

uint64_t sub_100015A04()
{
  v0 = sub_10002ED6C();

  if (v0 >= 0x1C)
  {
    return 28;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_100015AB0@<X0>(char *a1@<X8>)
{
  v3 = sub_10002E22C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000C0EC(&qword_1000431A0, &unk_100034A30);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v27 - v13;
  if ((*(v1 + 264) & 1) == 0 && (*(v1 + 312) & 1) == 0 && (*(v1 + 328) & 1) == 0)
  {
    v27[1] = *(v1 + 256);
    v15 = *(v1 + 320);
    v16 = *(v1 + 304) >= 0x7FFFFFFFFFFFFFFFuLL ? 0x7FFFFFFFFFFFFFFFLL : *(v1 + 304);
    result = sub_10002DE4C();
    if (v16 != result)
    {
      if (v15 >= 0x7FFFFFFFFFFFFFFFLL)
      {
        v18 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v18 = v15;
      }

      v19 = v16 + v18;
      if (__OFADD__(v16, v18))
      {
        __break(1u);
        return result;
      }

      v20 = *(v1 + 280);
      if (v20)
      {
        v27[0] = *(v1 + 272);

        sub_10002E20C();
        sub_100019E54(v14, v12);
        if ((*(v4 + 48))(v12, 1, v3) != 1)
        {
          v22 = *(v4 + 32);
          v22(v7, v12, v3);
          v29 = *(v1 + 336);
          v22(a1, v7, v3);
          v23 = _s17AssociatedMessageVMa();
          v24 = &a1[v23[5]];
          *v24 = v27[0];
          *(v24 + 1) = v20;
          v25 = &a1[v23[6]];
          *v25 = 0;
          *(v25 + 1) = 0;
          v26 = &a1[v23[7]];
          *v26 = v16;
          v26[1] = v19;
          *&a1[v23[8]] = v29;
          (*(*(v23 - 1) + 56))(a1, 0, 1, v23);
          return sub_10001977C(&v29, v28);
        }

        sub_10000E76C(v12, &qword_1000431A0, &unk_100034A30);
      }
    }
  }

  v21 = _s17AssociatedMessageVMa();
  return (*(*(v21 - 8) + 56))(a1, 1, 1, v21);
}

uint64_t sub_100015DAC@<X0>(void (*a1)(char *, char *, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v408 = a2;
  v402 = a1;
  v384 = a3;
  v4 = sub_10000C0EC(&qword_100042ED0, &unk_1000349D0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v380 = &v340 - v6;
  v387 = sub_10002EBEC();
  *&v397 = *(v387 - 8);
  v7 = *(v397 + 64);
  v8 = __chkstk_darwin(v387);
  v379 = &v340 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  *&v386 = &v340 - v11;
  __chkstk_darwin(v10);
  v385 = &v340 - v12;
  v13 = sub_10000C0EC(&qword_100042EA0, &qword_100034CE0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v364 = &v340 - v15;
  v16 = sub_10000C0EC(&qword_100043150, &qword_1000349E0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v351 = &v340 - v18;
  v19 = sub_10002E4DC();
  v354 = *(v19 - 8);
  v355 = v19;
  v20 = *(v354 + 64);
  v21 = __chkstk_darwin(v19);
  v349 = &v340 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v353 = &v340 - v23;
  v24 = sub_10000C0EC(&qword_100043158, &qword_1000349E8);
  v25 = *(*(v24 - 8) + 64);
  v26 = __chkstk_darwin(v24 - 8);
  v348 = &v340 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v357 = &v340 - v28;
  v368 = sub_10002E22C();
  v362 = *(v368 - 8);
  v29 = *(v362 + 64);
  v30 = __chkstk_darwin(v368);
  v356 = &v340 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v361 = &v340 - v32;
  v33 = sub_10000C0EC(&qword_100043160, &unk_1000349F0);
  v34 = *(*(v33 - 8) + 64);
  v35 = __chkstk_darwin(v33 - 8);
  v359 = &v340 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v373 = &v340 - v37;
  v38 = _s17AssociatedMessageVMa();
  v39 = *(v38 - 8);
  v374 = v38;
  v375 = v39;
  v40 = *(v39 + 64);
  __chkstk_darwin(v38);
  v372 = &v340 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_10002E1BC();
  v377 = *(v42 - 8);
  v378 = v42;
  v43 = *(v377 + 64);
  __chkstk_darwin(v42);
  v381 = &v340 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_10002E47C();
  v46 = *(v45 - 8);
  v382 = v45;
  v383 = v46;
  v47 = *(v46 + 64);
  v48 = __chkstk_darwin(v45);
  v389 = &v340 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __chkstk_darwin(v48);
  v371 = &v340 - v51;
  v52 = __chkstk_darwin(v50);
  v366 = &v340 - v53;
  v54 = __chkstk_darwin(v52);
  v376 = &v340 - v55;
  v56 = __chkstk_darwin(v54);
  v360 = &v340 - v57;
  v58 = __chkstk_darwin(v56);
  v350 = &v340 - v59;
  v60 = __chkstk_darwin(v58);
  v358 = &v340 - v61;
  __chkstk_darwin(v60);
  v367 = &v340 - v62;
  v63 = sub_10000C0EC(&qword_100042E40, &unk_100034D10);
  v64 = *(*(v63 - 8) + 64);
  __chkstk_darwin(v63 - 8);
  *&v396 = &v340 - v65;
  v66 = sub_10000C0EC(&qword_100043168, &unk_100034A00);
  v67 = *(*(v66 - 8) + 64);
  __chkstk_darwin(v66 - 8);
  v390 = &v340 - v68;
  v69 = sub_10002DFCC();
  v394 = *(v69 - 8);
  v395 = v69;
  v70 = *(v394 + 64);
  __chkstk_darwin(v69);
  v393 = &v340 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_10002E7DC();
  v391 = *(v72 - 8);
  v392 = v72;
  v73 = *(v391 + 64);
  __chkstk_darwin(v72);
  v398 = &v340 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  v400 = sub_10002E7AC();
  v399 = *(v400 - 8);
  v75 = *(v399 + 64);
  v76 = __chkstk_darwin(v400);
  v388 = &v340 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = __chkstk_darwin(v76);
  v370 = &v340 - v79;
  v80 = __chkstk_darwin(v78);
  v365 = &v340 - v81;
  v82 = __chkstk_darwin(v80);
  v369 = &v340 - v83;
  v84 = __chkstk_darwin(v82);
  v363 = &v340 - v85;
  v86 = __chkstk_darwin(v84);
  v352 = &v340 - v87;
  v88 = __chkstk_darwin(v86);
  v90 = &v340 - v89;
  v91 = __chkstk_darwin(v88);
  v93 = (&v340 - v92);
  v94 = __chkstk_darwin(v91);
  v96 = &v340 - v95;
  __chkstk_darwin(v94);
  v98 = &v340 - v97;
  v99 = sub_10002E00C();
  v401 = *(v99 - 8);
  v100 = *(v401 + 64);
  __chkstk_darwin(v99);
  v102 = &v340 - ((v101 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_10002DE7C();
  v104 = *(v103 + 48);
  v105 = *(v103 + 52);
  swift_allocObject();
  v106 = sub_10002DE6C();
  sub_10001960C(&qword_100043170, &type metadata accessor for TopLevelDictionary);
  sub_10002DE5C();
  if (v3)
  {
  }

  v402 = v93;
  v345 = v90;
  v346 = v98;
  v347 = v106;
  v408 = v99;
  sub_10002DFEC();
  v108 = v102;
  v343 = 0;
  v109 = v399;
  v110 = v346;
  v111 = v96;
  v112 = v400;
  (*(v399 + 32))(v346, v111, v400);
  v113 = sub_10002DFDC();
  v344 = v108;
  if (v114 >> 60 == 15)
  {
    v402 = sub_10000F74C();
    v115 = sub_10002EB3C();
    v398 = sub_10000C0EC(&qword_100042EB8, &unk_100034000);
    v116 = swift_allocObject();
    v397 = xmmword_100033FF0;
    *(v116 + 16) = xmmword_100033FF0;
    v117 = v396;
    sub_10002E79C();
    v118 = v110;
    v119 = sub_10002DF1C();
    v120 = *(v119 - 8);
    v121 = *(v120 + 56);
    v394 = v120 + 56;
    v395 = v121;
    v121(v117, 0, 1, v119);
    v122 = sub_10002E6CC();
    v124 = v123;
    sub_10000E76C(v117, &qword_100042E40, &unk_100034D10);
    *(v116 + 56) = &type metadata for String;
    v125 = sub_10000F798();
    *(v116 + 64) = v125;
    *(v116 + 32) = v122;
    *(v116 + 40) = v124;
    sub_10002EA8C();
    sub_10002E03C();

    v126 = v344;

    if ((sub_10002DFFC() & 1) == 0)
    {
      v143 = v399;
      v144 = v388;
      v145 = v400;
      (*(v399 + 16))(v388, v118, v400);
      v146 = v389;
      v147 = v343;
      sub_10002E56C();
      if (v147)
      {

        v148 = *(v143 + 8);
        v148(v144, v145);
        v148(v118, v145);
      }

      else
      {
        (*(v383 + 104))(v146, enum case for BasicTextMessage.MessageType.typingIndicator(_:), v382);
        sub_10002E48C();

        (*(v143 + 8))(v118, v145);
      }

      v191 = *(v401 + 8);
      v192 = v126;
      return v191(v192, v408);
    }

    v127 = sub_10002EB3C();
    v128 = swift_allocObject();
    *(v128 + 16) = v397;
    sub_10002E79C();
    v395(v117, 0, 1, v119);
    v129 = sub_10002E6CC();
    v131 = v130;
    sub_10000E76C(v117, &qword_100042E40, &unk_100034D10);
    *(v128 + 56) = &type metadata for String;
    *(v128 + 64) = v125;
    *(v128 + 32) = v129;
    *(v128 + 40) = v131;
    sub_10002EA8C();
    sub_10002E03C();

    sub_1000195B8();
    swift_allocError();
    swift_willThrow();

    (*(v399 + 8))(v118, v400);
LABEL_22:
    v191 = *(v401 + 8);
    v192 = v344;
    return v191(v192, v408);
  }

  v341 = v113;
  v342 = v114;
  isa = sub_10002DECC().super.isa;
  v133 = [(objc_class *)isa _imOptionallyDecompressData];

  v134 = sub_10002DEDC();
  v136 = v135;

  v137 = v136 >> 62;
  v388 = v134;
  v389 = v136;
  if ((v136 >> 62) <= 1)
  {
    v138 = v397;
    v139 = v394;
    v140 = v395;
    v141 = v393;
    if (!v137)
    {
      v142 = BYTE6(v136);
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  v138 = v397;
  v139 = v394;
  v140 = v395;
  v141 = v393;
  if (v137 != 2)
  {
LABEL_21:
    v179 = v139;
    (*(v139 + 104))(v141, enum case for TopLevelDictionary.CodingKeys.decryptedData(_:), v140);
    sub_10002DFBC();
    (*(v179 + 8))(v141, v140);
    v180 = v398;
    sub_10002E7CC();
    sub_10000F74C();
    v181 = sub_10002EB5C();
    sub_10000C0EC(&qword_100042EB8, &unk_100034000);
    v182 = swift_allocObject();
    *(v182 + 16) = xmmword_100033FF0;
    v183 = v390;
    v184 = v391;
    v402 = *(v391 + 16);
    v185 = v392;
    v402(v390, v180, v392);
    (*(v184 + 56))(v183, 0, 1, v185);
    v186 = sub_10002E6CC();
    v188 = v187;
    sub_10000E76C(v183, &qword_100043168, &unk_100034A00);
    *(v182 + 56) = &type metadata for String;
    *(v182 + 64) = sub_10000F798();
    *(v182 + 32) = v186;
    *(v182 + 40) = v188;
    sub_10002EA8C();
    sub_10002E03C();

    sub_10001960C(&qword_100042EA8, &type metadata accessor for Explosion);
    swift_allocError();
    v189 = v398;
    v402(v190, v398, v185);
    swift_willThrow();
    sub_10000F894(v341, v342);

    sub_10000F8A8(v388, v389);
    (*(v184 + 8))(v189, v185);
    (*(v399 + 8))(v346, v400);
    goto LABEL_22;
  }

  v150 = *(v134 + 16);
  v149 = *(v134 + 24);
  v151 = __OFSUB__(v149, v150);
  v142 = v149 - v150;
  if (v151)
  {
    __break(1u);
LABEL_15:
    LODWORD(v142) = HIDWORD(v134) - v134;
    if (__OFSUB__(HIDWORD(v134), v134))
    {
      __break(1u);
      goto LABEL_109;
    }

    v142 = v142;
  }

LABEL_17:
  if (v142 <= 0)
  {
    goto LABEL_21;
  }

  sub_100019654();
  v152 = v343;
  sub_10002DE5C();
  if (v152)
  {
    v403[0] = v152;
    swift_errorRetain();
    sub_10000C0EC(&qword_100042EC0, &qword_100034A10);
    v153 = v385;
    v154 = v387;
    if (swift_dynamicCast())
    {

      (*(v138 + 32))(v386, v153, v154);
      v156 = v393;
      v155 = v394;
      v157 = v395;
      (*(v394 + 104))(v393, enum case for TopLevelDictionary.CodingKeys.decryptedData(_:), v395);
      v158 = v154;
      sub_10002DFBC();
      v402 = v159;
      (*(v155 + 8))(v156, v157);
      v160 = *(v138 + 16);
      v161 = v386;
      v160(v379, v386, v154);
      sub_10002E7BC();
      v394 = sub_10000F74C();
      v162 = sub_10002EB5C();
      v402 = sub_10000C0EC(&qword_100042EB8, &unk_100034000);
      v163 = swift_allocObject();
      v396 = xmmword_100033FF0;
      *(v163 + 16) = xmmword_100033FF0;
      v164 = v380;
      v160(v380, v161, v158);
      (*(v397 + 56))(v164, 0, 1, v158);
      v165 = sub_10002E6CC();
      v167 = v166;
      sub_10000E76C(v164, &qword_100042ED0, &unk_1000349D0);
      *(v163 + 56) = &type metadata for String;
      v395 = sub_10000F798();
      *(v163 + 64) = v395;
      *(v163 + 32) = v165;
      *(v163 + 40) = v167;
      sub_10002EA8C();
      sub_10002E03C();

      v168 = sub_10002EB5C();
      v169 = swift_allocObject();
      *(v169 + 16) = v396;
      v171 = v390;
      v170 = v391;
      v402 = *(v391 + 16);
      v172 = v392;
      v402(v390, v398, v392);
      (*(v170 + 56))(v171, 0, 1, v172);
      v173 = sub_10002E6CC();
      v175 = v174;
      sub_10000E76C(v171, &qword_100043168, &unk_100034A00);
      v176 = v395;
      *(v169 + 56) = &type metadata for String;
      *(v169 + 64) = v176;
      *(v169 + 32) = v173;
      *(v169 + 40) = v175;
      sub_10002EA8C();
      sub_10002E03C();

      sub_10001960C(&qword_100042EA8, &type metadata accessor for Explosion);
      swift_allocError();
      v177 = v398;
      v402(v178, v398, v172);
      swift_willThrow();
      sub_10000F894(v341, v342);

      sub_10000F8A8(v388, v389);
      (*(v170 + 8))(v177, v172);
      (*(v397 + 8))(v386, v387);
      (*(v399 + 8))(v346, v400);
      (*(v401 + 8))(v344, v408);
    }

    sub_10000F74C();
    v207 = sub_10002EB5C();
    sub_10000C0EC(&qword_100042EB8, &unk_100034000);
    v208 = swift_allocObject();
    *(v208 + 16) = xmmword_100033FF0;
    v403[0] = v152;
    v209 = sub_10002E6CC();
    v211 = v210;
    *(v208 + 56) = &type metadata for String;
    *(v208 + 64) = sub_10000F798();
    *(v208 + 32) = v209;
    *(v208 + 40) = v211;
    sub_10002EA8C();
    sub_10002E03C();

    swift_getErrorValue();
    swift_getDynamicType();
    v403[0] = 0;
    v403[1] = 0xE000000000000000;
    sub_10002EBCC(22);

    v403[0] = 0xD000000000000014;
    v403[1] = 0x80000001000333B0;
    v409._countAndFlagsBits = sub_10002EE3C();
    sub_10002E90C(v409);

    sub_10001960C(&qword_100042EA8, &type metadata accessor for Explosion);
    swift_allocError();
    sub_10002E7CC();
    swift_willThrow();
    sub_10000F894(v341, v342);

    sub_10000F8A8(v388, v389);

    (*(v109 + 8))(v110, v112);
    goto LABEL_22;
  }

  memcpy(v404, v403, sizeof(v404));
  v390 = *&v404[224];
  LODWORD(v387) = v404[232];
  v393 = *&v404[96];
  LODWORD(v391) = v404[104];
  v193 = v404[72];
  v398 = sub_10000F74C();
  v194 = sub_10002EB5C();
  v394 = sub_10000C0EC(&qword_100042EB8, &unk_100034000);
  v195 = swift_allocObject();
  v386 = xmmword_100033FF0;
  *(v195 + 16) = xmmword_100033FF0;
  v196 = v396;
  sub_10002E79C();
  v197 = sub_10002DF1C();
  v198 = *(v197 - 8);
  *&v397 = *(v198 + 56);
  v395 = (v198 + 56);
  (v397)(v196, 0, 1, v197);
  v199 = sub_10002E6CC();
  v201 = v200;
  sub_10000E76C(v196, &qword_100042E40, &unk_100034D10);
  *(v195 + 56) = &type metadata for String;
  v202 = sub_10000F798();
  *(v195 + 64) = v202;
  *(v195 + 32) = v199;
  *(v195 + 40) = v201;
  sub_10002EA8C();
  sub_10002E03C();

  if (v193 != 2 && (v193 & 1) != 0)
  {
    v203 = v399;
    v204 = v346;
    v205 = v400;
    (*(v399 + 16))(v370, v346, v400);

    v206 = v371;
    sub_10002E56C();
    (*(v383 + 104))(v206, enum case for BasicTextMessage.MessageType.typingIndicator(_:), v382);

    sub_10002E48C();
    v246 = v401;
    v247 = v408;
    v248 = v344;
    sub_10000F894(v341, v342);

    sub_10000F8A8(v388, v389);
    (*(v203 + 8))(v204, v205);
    (*(v246 + 8))(v248, v247);
    return sub_10000EF34(v404);
  }

  v385 = v202;
  v212 = *&v404[144];
  v405 = *&v404[208];
  v213 = *&v404[216];
  LODWORD(v380) = v404[152];
  if (*&v404[216])
  {
    v214 = v405;
    if ((v405 != 0xD000000000000025 || *&v404[216] != 0x80000001000335E0) && (sub_10002ED5C() & 1) == 0 && *v404)
    {
      v379 = v212;

      v215 = sub_10002EA6C();
      v216 = sub_10002EB2C();
      if (os_log_type_enabled(v216, v215))
      {
        sub_10001977C(&v405, v403);
        v217 = swift_slowAlloc();
        v218 = swift_slowAlloc();
        v403[0] = v218;
        *v217 = 136446210;
        v219 = sub_100019850(v214, v213, v403);
        sub_10000E76C(&v405, &qword_100043190, &qword_100034A20);
        *(v217 + 4) = v219;
        _os_log_impl(&_mh_execute_header, v216, v215, "Returning unsupported message type for %{public}s", v217, 0xCu);
        sub_1000121A8(v218);
      }

      (*(v399 + 16))(v402, v346, v400);
      v220 = v367;
      sub_10002E53C();
      (*(v383 + 104))(v220, enum case for BasicTextMessage.MessageType.unsupported(_:), v382);
      v398 = *&v404[112];
      *&v397 = *&v404[128];
      v282 = *&v404[168];
      if (*&v404[168])
      {
        v283 = *&v404[160];

        sub_10001ADD8(v283, v282);
      }

      else
      {
      }

      sub_10002E48C();
      sub_10000F894(v341, v342);

      sub_10000F8A8(v388, v389);
      goto LABEL_104;
    }
  }

  sub_1000122B4(v404, v403);
  v221 = v381;
  BasicMessage.init(messageDictionary:)(v404, v381);
  v343 = 0;
  v379 = v212;
  v222 = v373;
  sub_100015AB0(v373);
  v223 = v374;
  v224 = (*(v375 + 48))(v222, 1, v374);
  v225 = v400;
  if (v224 == 1)
  {
    sub_10000E76C(v222, &qword_100043160, &unk_1000349F0);
    v226 = v376;
    goto LABEL_53;
  }

  v227 = v372;
  sub_1000196BC(v222, v372);
  v228 = *v404;
  v226 = v376;
  if (*v404)
  {
    v229 = v361;
    v230 = v362;
    v231 = *(v362 + 16);
    v232 = v368;
    v376 = (v362 + 16);
    v373 = v231;
    (v231)(v361, v227, v368);
    v233 = (*(v230 + 88))(v229, v232);
    v234 = v346;
    v402 = v228;
    if (v233 != enum case for BasicTapBack.AssociatedMessageType.tapbackHeart(_:) && v233 != enum case for BasicTapBack.AssociatedMessageType.tapbackThumbsUp(_:) && v233 != enum case for BasicTapBack.AssociatedMessageType.tapbackThumbsDown(_:) && v233 != enum case for BasicTapBack.AssociatedMessageType.tapbackHa(_:) && v233 != enum case for BasicTapBack.AssociatedMessageType.tapbackExclamation(_:) && v233 != enum case for BasicTapBack.AssociatedMessageType.tapbackQuestionMark(_:))
    {
      if (v233 == enum case for BasicTapBack.AssociatedMessageType.tapbackEmoji(_:))
      {
        goto LABEL_48;
      }

      if (v233 != enum case for BasicTapBack.AssociatedMessageType.tapbackDeselectedHeart(_:) && v233 != enum case for BasicTapBack.AssociatedMessageType.tapbackDeselectedThumbsUp(_:) && v233 != enum case for BasicTapBack.AssociatedMessageType.tapbackDeselectedThumbsDown(_:) && v233 != enum case for BasicTapBack.AssociatedMessageType.tapbackDeselectedHa(_:) && v233 != enum case for BasicTapBack.AssociatedMessageType.tapbackDeselectedExclamation(_:) && v233 != enum case for BasicTapBack.AssociatedMessageType.tapbackDeselectedQuestionMark(_:))
      {
        if (v233 != enum case for BasicTapBack.AssociatedMessageType.tapbackDeselectedEmoji(_:))
        {
          sub_10001960C(&qword_100042EA8, &type metadata accessor for Explosion);
          swift_allocError();
          sub_10002E7CC();
          swift_willThrow();
          sub_10000F894(v341, v342);

          sub_10000F8A8(v388, v389);
          sub_100019720(v227);
          (*(v377 + 8))(v221, v378);
          (*(v399 + 8))(v234, v400);
          (*(v401 + 8))(v344, v408);
          sub_10000EF34(v404);
          return (*(v362 + 8))(v229, v368);
        }

LABEL_48:

        v235 = sub_10002EB3C();
        v236 = swift_allocObject();
        *(v236 + 16) = v386;
        v237 = v396;
        sub_10002E79C();
        (v397)(v237, 0, 1, v197);
        v238 = sub_10002E6CC();
        v240 = v239;
        sub_10000E76C(v237, &qword_100042E40, &unk_100034D10);
        v241 = v385;
        *(v236 + 56) = &type metadata for String;
        *(v236 + 64) = v241;
        *(v236 + 32) = v238;
        *(v236 + 40) = v240;
        sub_10002EA8C();
        sub_10002E03C();

        v407[0] = *&v404[24];
        if (!*&v404[32] || (v242 = (v372 + v374[8]), !v242[1]))
        {

          goto LABEL_89;
        }

        *&v397 = *&v407[0];
        v398 = *v242;
        sub_10001977C(v407, v403);

        sub_10002E21C();
        v243 = v351;
        sub_10002E4CC();
        v245 = v354;
        v244 = v355;
        if ((*(v354 + 48))(v243, 1, v355) == 1)
        {

          sub_10000E76C(v407, &qword_100043190, &qword_100034A20);

          sub_10000E76C(v243, &qword_100043150, &qword_1000349E0);
LABEL_89:
          v320 = v401;
          v321 = v408;
          v322 = v344;
          v323 = v400;
          v324 = v377;
          sub_10001960C(&qword_100042EA8, &type metadata accessor for Explosion);
          swift_allocError();
          sub_10002E7CC();
          swift_willThrow();
          sub_10000F894(v341, v342);

          sub_10000F8A8(v388, v389);
          sub_100019720(v372);
          (*(v324 + 8))(v381, v378);
          (*(v399 + 8))(v346, v323);
          (*(v320 + 8))(v322, v321);
          return sub_10000EF34(v404);
        }

        v327 = v353;
        (*(v245 + 32))(v353, v243, v244);
        (*(v399 + 16))(v352, v346, v400);
        (*(v245 + 16))(v349, v327, v244);
        v328 = (v372 + v374[5]);
        v329 = *v328;
        v330 = v328[1];
        v331 = v372 + v374[6];
        v332 = *(v331 + 8);
        v395 = *v331;
        *&v396 = v329;
        v333 = (v372 + v374[7]);
        v334 = v333[1];
        v394 = *v333;

        sub_10000F4F8(v348);
        v335 = v343;
        sub_10002E4EC();
        if (v335)
        {
          sub_10000F894(v341, v342);

          sub_10000F8A8(v388, v389);
          v336 = *(v399 + 8);
          v337 = v400;
          v336(v352, v400);
          (*(v354 + 8))(v353, v355);
          sub_100019720(v372);
          (*(v377 + 8))(v381, v378);
          v336(v346, v337);
          goto LABEL_105;
        }

        (*(v383 + 104))(v350, enum case for BasicTextMessage.MessageType.emojiTapback(_:), v382);
        v402 = *&v404[112];
        v398 = *&v404[128];
        v338 = *&v404[168];
        if (*&v404[168])
        {
          v339 = *&v404[160];

          sub_10001ADD8(v339, v338);
LABEL_110:

          sub_10002E48C();
          sub_10000F894(v341, v342);

          sub_10000F8A8(v388, v389);
          (*(v354 + 8))(v353, v355);
          goto LABEL_102;
        }

LABEL_109:

        goto LABEL_110;
      }
    }

    v294 = v223;
    v398 = sub_10002EB3C();
    v295 = swift_allocObject();
    *(v295 + 16) = xmmword_100034950;
    v296 = v359;
    sub_1000197EC(v227, v359);
    (*(v375 + 56))(v296, 0, 1, v223);
    v297 = sub_10002E6CC();
    v299 = v298;
    sub_10000E76C(v296, &qword_100043160, &unk_1000349F0);
    v300 = v385;
    *(v295 + 56) = &type metadata for String;
    *(v295 + 64) = v300;
    *(v295 + 32) = v297;
    *(v295 + 40) = v299;
    v301 = v396;
    sub_10002E79C();
    (v397)(v301, 0, 1, v197);
    v302 = sub_10002E6CC();
    v304 = v303;
    sub_10000E76C(v301, &qword_100042E40, &unk_100034D10);
    *(v295 + 96) = &type metadata for String;
    *(v295 + 104) = v300;
    *(v295 + 72) = v302;
    *(v295 + 80) = v304;
    sub_10002EA8C();
    v305 = v398;
    sub_10002E03C();

    v406 = *&v404[24];
    if (*&v404[32])
    {
      v398 = v406;
      v306 = v399;
      (*(v399 + 16))(v345, v346, v400);
      v307 = v372;
      (v373)(v356, v372, v368);
      v308 = v223[6];
      v309 = (v307 + v223[5]);
      v310 = v309[1];
      *&v397 = *v309;
      v311 = v307 + v308;
      v312 = *(v307 + v308);
      v313 = *(v311 + 8);
      v314 = (v307 + v294[7]);
      v315 = *v314;
      v395 = v314[1];
      *&v396 = v312;
      sub_10001977C(&v406, v403);

      sub_10000F4F8(v357);
      v316 = v358;
      v317 = v343;
      sub_10002E23C();
      if (v317)
      {
        sub_10000F894(v341, v342);

        sub_10000F8A8(v388, v389);
        v318 = *(v306 + 8);
        v319 = v400;
        v318(v345, v400);
        sub_100019720(v372);
        (*(v377 + 8))(v381, v378);
        v318(v346, v319);
LABEL_105:
        (*(v401 + 8))(v344, v408);
        return sub_10000EF34(v404);
      }

      v343 = 0;
      (*(v383 + 104))(v316, enum case for BasicTextMessage.MessageType.tapback(_:), v382);
      v402 = *&v404[112];
      v325 = *&v404[168];
      if (*&v404[168])
      {
        v326 = *&v404[160];

        sub_10001ADD8(v326, v325);
      }

      else
      {
      }

      sub_10002E48C();
    }

    else
    {

      sub_10001960C(&qword_100042EA8, &type metadata accessor for Explosion);
      swift_allocError();
      sub_10002E7CC();
      swift_willThrow();
    }

    sub_10000F894(v341, v342);

    sub_10000F8A8(v388, v389);
LABEL_102:
    sub_100019720(v372);
    goto LABEL_103;
  }

  sub_100019720(v227);
LABEL_53:
  if (v404[73] != 2 && (v404[73] & 1) != 0)
  {
    v249 = sub_10002EB5C();
    v250 = swift_allocObject();
    *(v250 + 16) = v386;
    v251 = v396;
    v252 = v346;
    sub_10002E79C();
    (v397)(v251, 0, 1, v197);
    v253 = sub_10002E6CC();
    v255 = v254;
    sub_10000E76C(v251, &qword_100042E40, &unk_100034D10);
    v256 = v385;
    *(v250 + 56) = &type metadata for String;
    *(v250 + 64) = v256;
    *(v250 + 32) = v253;
    *(v250 + 40) = v255;
    sub_10002EA8C();
    sub_10002E03C();

    (*(v399 + 16))(v363, v252, v225);
    sub_10002E1AC();
    sub_10002E18C();
    v257 = *&v404[80];
    v258 = *&v404[88];
    if (*&v404[88] >> 60 != 15)
    {
      sub_10000C0EC(&qword_100043188, &qword_100034A18);
      v287 = swift_allocObject();
      *(v287 + 16) = v386;
      *(v287 + 32) = v257;
      *(v287 + 40) = v258;
    }

    v288 = v401;
    v289 = v344;
    v290 = v378;
    sub_1000196A8(v257, v258);
    v291 = v360;
    v292 = v343;
    sub_10002E4BC();
    if (v292)
    {
      sub_10000F894(v341, v342);

      sub_10000F8A8(v388, v389);
      v293 = *(v399 + 8);
      v293(v363, v225);
      (*(v377 + 8))(v381, v290);
      v293(v346, v225);
      (*(v288 + 8))(v289, v408);
      return sub_10000EF34(v404);
    }

    (*(v383 + 104))(v291, enum case for BasicTextMessage.MessageType.audioMessage(_:), v382);
    v402 = *&v404[112];
    v398 = *&v404[128];
    v280 = *&v404[168];
    if (*&v404[168])
    {
      goto LABEL_64;
    }

    goto LABEL_67;
  }

  if (*&v404[32] || *&v404[48] || *&v404[64])
  {
    v272 = sub_10002EB5C();
    v273 = swift_allocObject();
    *(v273 + 16) = v386;
    v274 = v396;
    v275 = v346;
    sub_10002E79C();
    (v397)(v274, 0, 1, v197);
    v276 = sub_10002E6CC();
    v278 = v277;
    sub_10000E76C(v274, &qword_100042E40, &unk_100034D10);
    v279 = v385;
    *(v273 + 56) = &type metadata for String;
    *(v273 + 64) = v279;
    *(v273 + 32) = v276;
    *(v273 + 40) = v278;
    sub_10002EA8C();
    sub_10002E03C();

    (*(v399 + 16))(v369, v275, v400);
    (*(v377 + 16))(v226, v381, v378);
    (*(v383 + 104))(v226, enum case for BasicTextMessage.MessageType.textMessage(_:), v382);
    v402 = *&v404[112];
    v280 = *&v404[168];
    if (*&v404[168])
    {
LABEL_64:
      v281 = *&v404[160];

      sub_10001ADD8(v281, v280);
LABEL_68:

      sub_10002E48C();
      sub_10000F894(v341, v342);

      sub_10000F8A8(v388, v389);
LABEL_103:
      (*(v377 + 8))(v381, v378);
LABEL_104:
      (*(v399 + 8))(v346, v400);
      goto LABEL_105;
    }

LABEL_67:

    goto LABEL_68;
  }

  v259 = sub_10002EB3C();
  v260 = swift_allocObject();
  *(v260 + 16) = v386;
  v261 = v396;
  v262 = v346;
  sub_10002E79C();
  (v397)(v261, 0, 1, v197);
  v263 = sub_10002E6CC();
  v265 = v264;
  sub_10000E76C(v261, &qword_100042E40, &unk_100034D10);
  v266 = v385;
  *(v260 + 56) = &type metadata for String;
  *(v260 + 64) = v266;
  *(v260 + 32) = v263;
  *(v260 + 40) = v265;
  sub_10002EA8C();
  sub_10002E03C();

  v267 = v399;
  v268 = v365;
  (*(v399 + 16))(v365, v262, v225);

  v269 = v366;
  v270 = v343;
  sub_10002E56C();
  if (v270)
  {
    sub_10000F894(v341, v342);

    sub_10000F8A8(v388, v389);
    v271 = *(v267 + 8);
    v271(v268, v225);
    (*(v377 + 8))(v381, v378);
    v271(v262, v225);
    (*(v401 + 8))(v344, v408);
    return sub_10000EF34(v404);
  }

  (*(v383 + 104))(v269, enum case for BasicTextMessage.MessageType.typingIndicator(_:), v382);
  v284 = *&v404[168];
  v285 = v344;
  if (*&v404[168])
  {
    v286 = *&v404[160];

    sub_10001ADD8(v286, v284);
  }

  else
  {
  }

  sub_10002E48C();
  sub_10000F894(v341, v342);

  sub_10000F8A8(v388, v389);
  (*(v377 + 8))(v381, v378);
  (*(v399 + 8))(v346, v225);
  (*(v401 + 8))(v285, v408);
  return sub_10000EF34(v404);
}

uint64_t _s17AssociatedMessageVMa()
{
  result = qword_100043200;
  if (!qword_100043200)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1000195B8()
{
  result = qword_100043178;
  if (!qword_100043178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100043178);
  }

  return result;
}

uint64_t sub_10001960C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100019654()
{
  result = qword_100043180;
  if (!qword_100043180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100043180);
  }

  return result;
}

uint64_t sub_1000196A8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10000F7EC(a1, a2);
  }

  return a1;
}

uint64_t sub_1000196BC(uint64_t a1, uint64_t a2)
{
  v4 = _s17AssociatedMessageVMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100019720(uint64_t a1)
{
  v2 = _s17AssociatedMessageVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001977C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C0EC(&qword_100043190, &qword_100034A20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000197EC(uint64_t a1, uint64_t a2)
{
  v4 = _s17AssociatedMessageVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100019850(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10001991C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_100019DF8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1000121A8(v11);
  return v7;
}

unint64_t sub_10001991C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100019A28(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_10002EBFC();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_100019A28(uint64_t a1, unint64_t a2)
{
  v4 = sub_100019A74(a1, a2);
  sub_100019BA4(&off_10003DDE0);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100019A74(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_100019C90(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_10002EBFC();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_10002E91C();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100019C90(v10, 0);
        result = sub_10002EBAC();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_100019BA4(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_100019D04(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100019C90(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_10000C0EC(&qword_100043198, &qword_100034A28);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100019D04(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000C0EC(&qword_100043198, &qword_100034A28);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_100019DF8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100019E54(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C0EC(&qword_1000431A0, &unk_100034A30);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100019EE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10002E22C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100019FBC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10002E22C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_10001A078()
{
  sub_10002E22C();
  if (v0 <= 0x3F)
  {
    sub_10001A120();
    if (v1 <= 0x3F)
    {
      sub_10001A170();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10001A120()
{
  if (!qword_100043010)
  {
    v0 = sub_10002EB7C();
    if (!v1)
    {
      atomic_store(v0, &qword_100043010);
    }
  }
}

void sub_10001A170()
{
  if (!qword_100043210)
  {
    v0 = sub_10002EA2C();
    if (!v1)
    {
      atomic_store(v0, &qword_100043210);
    }
  }
}

unint64_t sub_10001A1D8(uint64_t a1)
{
  result = sub_10000C134();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10001A248@<X0>(uint64_t a1@<X8>)
{
  v22[1] = a1;
  v2 = sub_10002E7AC();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v22[3] = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000C0EC(&qword_100043258, &qword_100034B38);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v22 - v10;
  v12 = sub_10002E00C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10002DE7C();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  sub_10002DE6C();
  sub_10001A9B0(&qword_100043170, &type metadata accessor for TopLevelDictionary);
  sub_10002DE5C();

  if (!v1)
  {
    v21 = sub_10002E4AC();
    (*(*(v21 - 8) + 56))(v11, 1, 1, v21);
    sub_10001A9F8(v11, v9);
    sub_10002DFEC();
    sub_10002E16C();
    sub_10001AA68(v11);
    return (*(v13 + 8))(v16, v12);
  }

  return result;
}

uint64_t sub_10001A52C()
{
  v1 = sub_10002E7AC();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = sub_10002E00C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002DE7C();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  sub_10002DE6C();
  sub_10001A9B0(&qword_100043170, &type metadata accessor for TopLevelDictionary);
  sub_10002DE5C();

  if (!v0)
  {
    sub_10002DFEC();
    sub_10002E44C();
    return (*(v4 + 8))(v7, v3);
  }

  return result;
}

uint64_t sub_10001A724@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v19 = a1;
  v18[1] = a2;
  v3 = sub_10002E7AC();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = sub_10000C0EC(&qword_100043258, &qword_100034B38);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v18 - v7;
  v9 = sub_10002E00C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10002DE7C();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  sub_10002DE6C();
  sub_10001A9B0(&qword_100043170, &type metadata accessor for TopLevelDictionary);
  sub_10002DE5C();

  if (!v2)
  {
    sub_10001A9F8(v19, v8);
    sub_10002DFEC();
    sub_10002E16C();
    return (*(v10 + 8))(v13, v9);
  }

  return result;
}

uint64_t sub_10001A9B0(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10001A9F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C0EC(&qword_100043258, &qword_100034B38);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001AA68(uint64_t a1)
{
  v2 = sub_10000C0EC(&qword_100043258, &qword_100034B38);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _AttributedString.init(fromNSAttributedString:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10002E52C();
  v21 = *(v4 - 8);
  v5 = *(v21 + 64);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 string];
  if (!v8)
  {
    sub_10002E87C();
    v8 = sub_10002E84C();
  }

  v9 = sub_10002E87C();
  v11 = v10;
  v25 = &_swiftEmptyArrayStorage;
  v24 = 0;
  result = [v8 length];
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v13 = result;
  v19 = v4;
  v20 = a2;
  v14 = swift_allocObject();
  v14[2] = v9;
  v14[3] = v11;
  v14[4] = &v24;
  v14[5] = &v25;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_10001EAC0;
  *(v15 + 24) = v14;
  aBlock[4] = sub_10001EADC;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001D490;
  aBlock[3] = &unk_10003E658;
  v16 = _Block_copy(aBlock);

  [a1 enumerateAttributesInRange:0 options:v13 usingBlock:{0, v16}];
  _Block_release(v16);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  if (v24)
  {
    swift_errorRetain();

    swift_willThrow();
  }

  else
  {

    v17 = v22;
    sub_10002E51C();

    if (!v17)
    {
      (*(v21 + 32))(v20, v7, v19);
    }
  }
}

uint64_t sub_10001ADD8(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v22[0] = result;
      v22[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v14 = v22 + 1;
            while (1)
            {
              v15 = *v14 - 48;
              if (v15 > 9)
              {
                break;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                break;
              }

              v9 = __CFADD__(10 * v6, v15);
              v6 = 10 * v6 + v15;
              if (v9)
              {
                break;
              }

              ++v14;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_63;
        }

LABEL_74:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v17 = v22;
          while (1)
          {
            v18 = *v17 - 48;
            if (v18 > 9)
            {
              break;
            }

            if (!is_mul_ok(v6, 0xAuLL))
            {
              break;
            }

            v9 = __CFADD__(10 * v6, v18);
            v6 = 10 * v6 + v18;
            if (v9)
            {
              break;
            }

            ++v17;
            if (!--v2)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_63;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v22 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            if (!is_mul_ok(v6, 0xAuLL))
            {
              break;
            }

            v9 = 10 * v6 >= v11;
            v6 = 10 * v6 - v11;
            if (!v9)
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_10002EBFC();
        v3 = v21;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v12 = (result + 1);
              while (1)
              {
                v13 = *v12 - 48;
                if (v13 > 9)
                {
                  goto LABEL_63;
                }

                if (!is_mul_ok(v6, 0xAuLL))
                {
                  goto LABEL_63;
                }

                v9 = __CFADD__(10 * v6, v13);
                v6 = 10 * v6 + v13;
                if (v9)
                {
                  goto LABEL_63;
                }

                ++v12;
                if (!--v3)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_62;
          }

          goto LABEL_63;
        }

        goto LABEL_73;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v16 = *result - 48;
              if (v16 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                goto LABEL_63;
              }

              v9 = __CFADD__(10 * v6, v16);
              v6 = 10 * v6 + v16;
              if (v9)
              {
                goto LABEL_63;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_62;
        }

LABEL_63:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_64;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                goto LABEL_63;
              }

              v9 = 10 * v6 >= v8;
              v6 = 10 * v6 - v8;
              if (!v9)
              {
                goto LABEL_63;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

LABEL_62:
          LOBYTE(v3) = 0;
LABEL_64:
          v23 = v3;
          v19 = v3;
          goto LABEL_65;
        }

        goto LABEL_63;
      }

      __break(1u);
    }

    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v6 = sub_10001EB1C(result, a2, 10);
  v19 = v20;
LABEL_65:

  if (v19)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_10001B0D8(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_10002EBFC();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_10001F0A0(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_10001B3D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void **a8)
{
  v116 = a8;
  v109 = a7;
  v111 = a6;
  v108 = a4;
  v114 = a1;
  v10 = sub_10000C0EC(&qword_100043280, &qword_100034B80);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v93 - v12;
  v14 = sub_10002DEBC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v19 = &v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v93 - v20;
  v22 = sub_10000C0EC(&qword_100043288, &qword_100034B88);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v25 = &v93 - v24;
  result = sub_10002DE4C();
  if (result != a2)
  {
    v113 = a2 + a3;
    if (!__OFADD__(a2, a3))
    {
      v110 = v25;
      v100 = v21;
      v101 = v19;
      v103 = v14;
      v104 = v13;
      v112 = a2;
      v27 = v114 + 64;
      v28 = 1 << *(v114 + 32);
      v29 = -1;
      if (v28 < 64)
      {
        v29 = ~(-1 << v28);
      }

      v30 = v29 & *(v114 + 64);
      v31 = (v28 + 63) >> 6;
      v115 = MBDIMFileTransferAttributeName;
      v107 = MBDIMBaseWritingDirectionAttributeName;
      v106 = MBDIMMessagePartAttributeName;
      v105 = MBDIMLinkAttributeName;
      v96 = MBDIMLinkIsRichLinkAttributeName;
      v102 = (v15 + 56);
      v99 = (v15 + 32);
      v98 = (v15 + 16);
      v97 = (v15 + 8);

      v32 = 0;
      v95 = xmmword_100034B50;
      if (!v30)
      {
        goto LABEL_9;
      }

      while (1)
      {
        v33 = v32;
LABEL_17:
        v36 = __clz(__rbit64(v30));
        v30 &= v30 - 1;
        v37 = v36 | (v33 << 6);
        v38 = *(*(v114 + 48) + 8 * v37);
        sub_100019DF8(*(v114 + 56) + 32 * v37, &v118);
        *&v122 = v38;
        sub_10001FD38(&v118, (&v122 + 8));
        v39 = v38;
LABEL_18:
        v125[0] = v122;
        v125[1] = v123;
        v126 = v124;
        v40 = v122;
        if (!v122)
        {
        }

        sub_10001FD38((v125 + 8), &v121);
        v124 = 0;
        v122 = 0u;
        v123 = 0u;
        v41 = sub_10002E87C();
        v43 = v42;
        if (v41 == sub_10002E87C() && v43 == v44)
        {

LABEL_23:
          sub_100019DF8(&v121, &v118);
          sub_10000C0EC(&qword_100043278, &qword_100034B78);
          if (swift_dynamicCast())
          {
            v46 = v117;

            v47 = v110;
            FileTransferAttribute.init(fileTransferDict:string:range:)(v46, v112, v113, v110);
            v52 = sub_10002E5FC();
            v53 = *(v52 - 8);
            if ((*(*(v52 - 8) + 48))(v47, 1, v52) == 1)
            {
              sub_10000E76C(&v122, &qword_100043290, &qword_100034B90);
              sub_10000E76C(v47, &qword_100043288, &qword_100034B88);
              v118 = 0u;
              v119 = 0u;
              v120 = 0;
            }

            else
            {
              *(&v119 + 1) = v52;
              v120 = sub_10001FEDC(&qword_1000432B8, &type metadata accessor for FileTransferAttribute);
              v56 = sub_10001FE28(&v118);
              (*(v53 + 32))(v56, v47, v52);
              sub_10000E76C(&v122, &qword_100043290, &qword_100034B90);
            }

            goto LABEL_38;
          }

          goto LABEL_51;
        }

        v45 = sub_10002ED5C();

        if (v45)
        {
          goto LABEL_23;
        }

        v48 = sub_10002E87C();
        v50 = v49;
        if (v48 == sub_10002E87C() && v50 == v51)
        {
          break;
        }

        v54 = sub_10002ED5C();

        if (v54)
        {
          goto LABEL_32;
        }

        v57 = sub_10002E87C();
        v59 = v58;
        if (v57 == sub_10002E87C() && v59 == v60)
        {

LABEL_40:
          sub_100019DF8(&v121, &v118);
          sub_10001FDE0(0, &qword_100042EF0, NSNumber_ptr);
          if (swift_dynamicCast())
          {
            v62 = v117;
            sub_10002EB9C();
            *(&v119 + 1) = sub_10002E58C();
            v120 = sub_10001FEDC(&qword_1000432A8, &type metadata accessor for MessagePartAttribute);
            sub_10001FE28(&v118);
            sub_10002E57C();
            goto LABEL_42;
          }

          goto LABEL_51;
        }

        v61 = sub_10002ED5C();

        if (v61)
        {
          goto LABEL_40;
        }

        v63 = sub_10002E87C();
        v65 = v64;
        if (v63 == sub_10002E87C() && v65 == v66)
        {

LABEL_48:
          sub_100019DF8(&v121, &v118);
          v68 = v104;
          v69 = v103;
          v70 = swift_dynamicCast();
          v71 = *v102;
          if ((v70 & 1) == 0)
          {
            v71(v68, 1, 1, v69);
            sub_10000E76C(v68, &qword_100043280, &qword_100034B80);
            goto LABEL_51;
          }

          v71(v68, 0, 1, v69);
          v72 = v100;
          (*v99)(v100, v68, v69);
          (*v98)(v101, v72, v69);
          *(&v119 + 1) = sub_10002E3EC();
          v120 = sub_10001FEDC(&qword_1000432A0, &type metadata accessor for LinkAttribute);
          sub_10001FE28(&v118);
          sub_10002E3DC();
          (*v97)(v72, v69);
          goto LABEL_43;
        }

        v67 = sub_10002ED5C();

        if (v67)
        {
          goto LABEL_48;
        }

        v79 = sub_10002E87C();
        v81 = v80;
        if (v79 == sub_10002E87C() && v81 == v82)
        {
        }

        else
        {
          v83 = sub_10002ED5C();

          if ((v83 & 1) == 0)
          {
            sub_10001FDE0(0, &qword_100042EB0, OS_os_log_ptr);
            v94 = sub_10002EB3C();
            sub_10000C0EC(&qword_100042EB8, &unk_100034000);
            v84 = swift_allocObject();
            *(v84 + 16) = v95;
            v85 = sub_10002E87C();
            v87 = v86;
            *(v84 + 56) = &type metadata for String;
            v88 = sub_10000F798();
            *(v84 + 32) = v85;
            *(v84 + 40) = v87;
            *(v84 + 96) = &type metadata for Int;
            v89 = v112;
            *(v84 + 64) = v88;
            *(v84 + 72) = v89;
            *(v84 + 136) = &type metadata for Int;
            *(v84 + 144) = &protocol witness table for Int;
            v90 = v113;
            *(v84 + 104) = &protocol witness table for Int;
            *(v84 + 112) = v90;
            sub_10002EA8C();
            v91 = v94;
            sub_10002E03C();

            goto LABEL_51;
          }
        }

        sub_100019DF8(&v121, &v118);
        sub_10001FDE0(0, &qword_100042EF0, NSNumber_ptr);
        if (swift_dynamicCast())
        {
          v62 = v117;
          [v117 BOOLValue];
          *(&v119 + 1) = sub_10002E06C();
          v120 = sub_10001FEDC(&qword_100043298, &type metadata accessor for LinkIsRichLinkAttribute);
          sub_10001FE28(&v118);
          sub_10002E05C();
LABEL_42:

LABEL_43:
          sub_10000E76C(&v122, &qword_100043290, &qword_100034B90);
          sub_10001FDC8(&v118, &v122);
        }

LABEL_51:
        sub_10000E7CC(&v122, &v118, &qword_100043290, &qword_100034B90);
        if (*(&v119 + 1))
        {
          sub_10000E76C(&v118, &qword_100043290, &qword_100034B90);
          result = sub_10000E7CC(&v122, &v118, &qword_100043290, &qword_100034B90);
          if (!*(&v119 + 1))
          {
            goto LABEL_70;
          }

          v73 = v116;
          v74 = *v116;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v73 = v74;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v74 = sub_10002C858(0, v74[2] + 1, 1, v74);
            *v116 = v74;
          }

          v77 = v74[2];
          v76 = v74[3];
          if (v77 >= v76 >> 1)
          {
            v92 = sub_10002C858((v76 > 1), v77 + 1, 1, v74);
            *v116 = v92;
          }

          sub_10000E76C(&v122, &qword_100043290, &qword_100034B90);
          sub_1000121A8(&v121);
          v78 = *v116;
          *(v78 + 16) = v77 + 1;
          result = sub_10001FDC8(&v118, v78 + 40 * v77 + 32);
          if (!v30)
          {
LABEL_9:
            if (v31 <= v32 + 1)
            {
              v34 = v32 + 1;
            }

            else
            {
              v34 = v31;
            }

            v35 = v34 - 1;
            while (1)
            {
              v33 = v32 + 1;
              if (__OFADD__(v32, 1))
              {
                break;
              }

              if (v33 >= v31)
              {
                v30 = 0;
                v124 = 0;
                v32 = v35;
                v122 = 0u;
                v123 = 0u;
                goto LABEL_18;
              }

              v30 = *(v27 + 8 * v33);
              ++v32;
              if (v30)
              {
                v32 = v33;
                goto LABEL_17;
              }
            }

            __break(1u);
            goto LABEL_69;
          }
        }

        else
        {

          sub_10000E76C(&v122, &qword_100043290, &qword_100034B90);
          sub_1000121A8(&v121);
          result = sub_10000E76C(&v118, &qword_100043290, &qword_100034B90);
          if (!v30)
          {
            goto LABEL_9;
          }
        }
      }

LABEL_32:
      sub_100019DF8(&v121, &v118);
      sub_10001FDE0(0, &qword_100042EF0, NSNumber_ptr);
      if (swift_dynamicCast())
      {
        v55 = v117;
        sub_10002EA1C();
        *(&v119 + 1) = sub_10002E6BC();
        v120 = sub_10001FEDC(&qword_1000432B0, &type metadata accessor for BaseWritingDirectionAttribute);
        sub_10001FE28(&v118);
        sub_10002E6AC();
        sub_10000E76C(&v122, &qword_100043290, &qword_100034B90);

LABEL_38:
        v122 = v118;
        v123 = v119;
        v124 = v120;
        goto LABEL_51;
      }

      goto LABEL_51;
    }

LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
  }

  return result;
}

uint64_t FileTransferAttribute.init(fileTransferDict:string:range:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v119 = a2;
  v120 = a3;
  v134 = sub_10002E5FC();
  v130 = *(v134 - 8);
  v7 = *(v130 + 64);
  __chkstk_darwin(v134);
  v121 = &v106 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000C0EC(&qword_100043260, &qword_100034B60);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v118 = &v106 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v116 = &v106 - v14;
  __chkstk_darwin(v13);
  v122 = &v106 - v15;
  v16 = sub_10002E61C();
  v123 = *(v16 - 8);
  v17 = *(v123 + 64);
  __chkstk_darwin(v16);
  v19 = &v106 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10000C0EC(&qword_100043268, &qword_100034B68);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v23 = &v106 - v22;
  v24 = sub_10002E66C();
  v127 = *(v24 - 8);
  v25 = *(v127 + 64);
  __chkstk_darwin(v24);
  v27 = &v106 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_10002E5BC();
  v124 = *(v28 - 8);
  v125 = v28;
  v29 = *(v124 + 64);
  v30 = __chkstk_darwin(v28);
  v117 = &v106 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v126 = &v106 - v32;

  v33 = sub_10002E87C();
  if (!*(a1 + 16))
  {

    goto LABEL_15;
  }

  v128 = a4;
  v129 = v4;
  v35 = sub_10001FAA0(v33, v34);
  v37 = v36;

  if ((v37 & 1) == 0 || (sub_100019DF8(*(a1 + 56) + 32 * v35, v133), sub_10000C0EC(&qword_100043270, &qword_100034B70), (swift_dynamicCast() & 1) == 0))
  {

    a4 = v128;
LABEL_15:
    sub_10002EA7C();
    sub_10001FDE0(0, &qword_100042EB0, OS_os_log_ptr);
    v48 = sub_10002EB3C();
    sub_10002E04C();

    v49 = 1;
    v50 = v134;
    v51 = v130;
    return (*(v51 + 56))(a4, v49, 1, v50);
  }

  if (!*(v131 + 16))
  {

    sub_10002E7DC();
    sub_10001FEDC(&qword_100042EA8, &type metadata accessor for Explosion);
    swift_allocError();
    sub_10002E7CC();
    return swift_willThrow();
  }

  v110 = "nary8{_NSRange=QQ}16^B32";
  v112 = v131;
  v38 = *(v131 + 32);
  v39 = sub_10002E87C();
  v41 = v40;
  if (!*(v38 + 16))
  {

    goto LABEL_19;
  }

  v42 = v39;

  v115 = sub_10001FAA0(v42, v41);
  v44 = v43;

  if ((v44 & 1) == 0)
  {
LABEL_19:
    v109 = 0;
    v113 = 0;
    goto LABEL_20;
  }

  sub_100019DF8(*(v38 + 56) + 32 * v115, v133);
  v45 = swift_dynamicCast();
  v46 = v131;
  if (!v45)
  {
    v46 = 0;
  }

  v109 = v46;
  if (v45)
  {
    v47 = v132;
  }

  else
  {
    v47 = 0;
  }

  v113 = v47;
LABEL_20:
  v53 = sub_10002E87C();
  if (!*(v38 + 16))
  {

    goto LABEL_29;
  }

  v115 = sub_10001FAA0(v53, v54);
  v56 = v55;

  if ((v56 & 1) == 0)
  {
LABEL_29:
    v107 = 0;
    v114 = 0;
    goto LABEL_30;
  }

  sub_100019DF8(*(v38 + 56) + 32 * v115, v133);
  v57 = swift_dynamicCast();
  v58 = v131;
  if (!v57)
  {
    v58 = 0;
  }

  v107 = v58;
  if (v57)
  {
    v59 = v132;
  }

  else
  {
    v59 = 0;
  }

  v114 = v59;
LABEL_30:
  v60 = sub_10002E87C();
  if (!*(v38 + 16))
  {

    goto LABEL_38;
  }

  v115 = sub_10001FAA0(v60, v61);
  v63 = v62;

  if ((v63 & 1) == 0)
  {
LABEL_38:
    v106 = 0;
    v66 = 0;
    goto LABEL_39;
  }

  sub_100019DF8(*(v38 + 56) + 32 * v115, v133);
  v64 = swift_dynamicCast();
  v65 = v131;
  if (!v64)
  {
    v65 = 0;
  }

  v106 = v65;
  if (v64)
  {
    v66 = v132;
  }

  else
  {
    v66 = 0;
  }

LABEL_39:
  v67 = sub_10002E87C();
  if (*(v38 + 16))
  {
    v111 = v66;
    v115 = sub_10001FAA0(v67, v68);
    v70 = v69;

    if (v70)
    {
      sub_100019DF8(*(v38 + 56) + 32 * v115, v133);
      v71 = swift_dynamicCast();
      v72 = v131;
      if (!v71)
      {
        v72 = 0;
      }

      v108 = v72;
      if (v71)
      {
        v73 = v132;
      }

      else
      {
        v73 = 0;
      }

      v115 = v73;
    }

    else
    {
      v108 = 0;
      v115 = 0;
    }

    v74 = v129;
  }

  else
  {

    v108 = 0;
    v115 = 0;
    v74 = v129;
  }

  AudioMessageAttachmentInfo.init(audioMessageDict:)(v38, v23);
  if (v74)
  {
  }

  v75 = v127;
  if ((*(v127 + 48))(v23, 1, v24) == 1)
  {
    sub_10000E76C(v23, &qword_100043268, &qword_100034B68);
    sub_10001D7D4(v112);

    sub_10002E60C();
    v86 = v126;
    (*(v123 + 32))(v126, v19, v16);
    v87 = v124;
    v88 = v125;
    (*(v124 + 104))(v86, enum case for FileTransferAttribute.AttachmentSubtype.unspecified(_:), v125);
  }

  else
  {

    (*(v75 + 32))(v27, v23, v24);
    v76 = v126;
    (*(v75 + 16))(v126, v27, v24);
    v87 = v124;
    v88 = v125;
    (*(v124 + 104))(v76, enum case for FileTransferAttribute.AttachmentSubtype.audioMessage(_:), v125);
    v77 = *(v75 + 8);
    v86 = v76;
    v77(v27, v24);
  }

  v78 = sub_10002E87C();
  if (!*(a1 + 16))
  {

LABEL_63:
    sub_10002E7DC();
    sub_10001FEDC(&qword_100042EA8, &type metadata accessor for Explosion);
    swift_allocError();
    sub_10002E7CC();
    swift_willThrow();
    return (*(v87 + 8))(v86, v88);
  }

  v80 = sub_10001FAA0(v78, v79);
  v82 = v81;

  if ((v82 & 1) == 0 || (sub_100019DF8(*(a1 + 56) + 32 * v80, v133), (swift_dynamicCast() & 1) == 0))
  {

    v86 = v126;
    goto LABEL_63;
  }

  if (!v113)
  {

    sub_10002E7DC();
    sub_10001FEDC(&qword_100042EA8, &type metadata accessor for Explosion);
    swift_allocError();
    sub_10002E7CC();
    swift_willThrow();
    return (*(v87 + 8))(v126, v88);
  }

  v83 = v131;
  v84 = sub_10001ADD8(v109, v113);
  if ((v85 & 1) == 0)
  {
    if (v115)
    {
      v89 = v84;
      v90 = sub_10001B0D8(v108, v115);
      if (v91)
      {

        sub_10002E7DC();
        sub_10001FEDC(&qword_100042EA8, &type metadata accessor for Explosion);
        swift_allocError();
        goto LABEL_68;
      }

      v123 = v90;
      v84 = v89;
    }

    else
    {
      v123 = 0;
    }

    v129 = v84;
    v92 = sub_10002E87C();
    v94 = *(a1 + 16);
    v127 = v83;
    if (v94)
    {
      v95 = sub_10001FAA0(v92, v93);
      v97 = v96;

      if (v97)
      {
        sub_100019DF8(*(a1 + 56) + 32 * v95, v133);

        sub_10000C0EC(&qword_100043278, &qword_100034B78);
        if (swift_dynamicCast())
        {
          v98 = v116;
          FileTransferAttribute.ImageInfo.init(imageDict:)(v131, v116);
          v105 = v122;
          sub_10001FB18(v98, v122);
LABEL_78:
          sub_10000E7CC(v105, v118, &qword_100043260, &qword_100034B60);
          v100 = v124;
          v101 = v126;
          (*(v124 + 16))(v117, v126, v125);
          v102 = v121;
          sub_10002E5CC();
          sub_10000E76C(v122, &qword_100043260, &qword_100034B60);
          (*(v100 + 8))(v101, v125);
          v51 = v130;
          a4 = v128;
          v103 = v102;
          v104 = v134;
          (*(v130 + 32))(v128, v103, v134);
          v50 = v104;
          v49 = 0;
          return (*(v51 + 56))(a4, v49, 1, v50);
        }
      }

      else
      {
      }
    }

    else
    {
    }

    v99 = sub_10002E5EC();
    v105 = v122;
    (*(*(v99 - 8) + 56))(v122, 1, 1, v99);
    goto LABEL_78;
  }

  sub_10002E7DC();
  sub_10001FEDC(&qword_100042EA8, &type metadata accessor for Explosion);
  swift_allocError();
LABEL_68:
  sub_10002E7CC();
  swift_willThrow();
  return (*(v124 + 8))(v126, v125);
}

uint64_t sub_10001D490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  type metadata accessor for Key(0);
  sub_10001FEDC(&qword_100042E00, type metadata accessor for Key);
  v10 = sub_10002E83C();
  v9(v10, a3, a4, a5);
}

uint64_t AudioMessageAttachmentInfo.init(audioMessageDict:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10002E66C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10002E87C();
  if (!*(a1 + 16))
  {

LABEL_8:

    v22 = 1;
    return (*(v6 + 56))(a2, v22, 1, v5);
  }

  v12 = sub_10001FAA0(v10, v11);
  v14 = v13;

  if ((v14 & 1) == 0)
  {
    goto LABEL_8;
  }

  sub_100019DF8(*(a1 + 56) + 32 * v12, v25);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_8;
  }

  v15 = v24[2];
  v16 = v24[3];
  v17 = sub_10002E87C();
  if (*(a1 + 16))
  {
    v24[1] = v16;
    v26 = v15;
    v19 = sub_10001FAA0(v17, v18);
    v21 = v20;

    if (v21)
    {
      sub_100019DF8(*(a1 + 56) + 32 * v19, v25);

      swift_dynamicCast();
    }

    else
    {
    }
  }

  else
  {
  }

  result = sub_10002E65C();
  if (!v2)
  {
    (*(v6 + 32))(a2, v9, v5);
    v22 = 0;
    return (*(v6 + 56))(a2, v22, 1, v5);
  }

  return result;
}

void *sub_10001D7D4(uint64_t a1)
{
  v3 = sub_10002E5AC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v20 - v9;
  v11 = *(a1 + 16);
  if (!v11)
  {
    return &_swiftEmptyArrayStorage;
  }

  v12 = (a1 + 32);
  v20[2] = v4 + 8;
  v21 = (v4 + 16);
  v20[1] = v4 + 32;
  v13 = &_swiftEmptyArrayStorage;
  v22 = v8;
  while (1)
  {
    v14 = *v12;

    FileTransferAttribute.AttachmentInfo.init(attributes:)(v15, v10);
    if (v1)
    {
      break;
    }

    (*v21)(v8, v10, v3);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_10002C654(0, v13[2] + 1, 1, v13);
    }

    v17 = v13[2];
    v16 = v13[3];
    if (v17 >= v16 >> 1)
    {
      v13 = sub_10002C654(v16 > 1, v17 + 1, 1, v13);
    }

    (*(v4 + 8))(v10, v3);
    v13[2] = v17 + 1;
    v18 = v13 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v17;
    v8 = v22;
    (*(v4 + 32))(v18, v22, v3);
    ++v12;
    if (!--v11)
    {
      return v13;
    }
  }

  return v13;
}

uint64_t FileTransferAttribute.ImageInfo.init(imageDict:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10002E5EC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10002E87C();
  if (!*(a1 + 16))
  {

    goto LABEL_12;
  }

  v12 = sub_10001FAA0(v10, v11);
  v14 = v13;

  if ((v14 & 1) == 0)
  {
    goto LABEL_12;
  }

  sub_100019DF8(*(a1 + 56) + 32 * v12, v32);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  v16 = v30;
  v15 = v31;
  v17 = sub_10002E87C();
  if (!*(a1 + 16))
  {

    goto LABEL_12;
  }

  v28 = v16;
  v29 = v15;
  v19 = sub_10001FAA0(v17, v18);
  v21 = v20;

  if ((v21 & 1) == 0)
  {

    goto LABEL_12;
  }

  sub_100019DF8(*(a1 + 56) + 32 * v19, v32);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:

    v27 = 1;
    return (*(v6 + 56))(a2, v27, 1, v5);
  }

  v23 = v30;
  v22 = v31;
  v32[0] = 0;
  v24 = sub_10001FC40(v28, v29);

  if (!v24)
  {

    goto LABEL_19;
  }

  v32[0] = 0;
  v25 = sub_10001FC40(v23, v22);

  if (!v25)
  {
LABEL_19:
    sub_10002E7DC();
    sub_10001FEDC(&qword_100042EA8, &type metadata accessor for Explosion);
    swift_allocError();
    sub_10002E7CC();
    return swift_willThrow();
  }

  result = sub_10002E5DC();
  if (v2)
  {
    return result;
  }

  (*(v6 + 32))(a2, v9, v5);
  v27 = 0;
  return (*(v6 + 56))(a2, v27, 1, v5);
}

unsigned __int8 *FileTransferAttribute.AttachmentInfo.init(attributes:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = (*(*(sub_10000C0EC(&qword_100043280, &qword_100034B80) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v7 = v68 - v6;
  v8 = sub_10002DEBC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = (__chkstk_darwin)();
  v13 = v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v68 - v14;
  v81 = "FileTransferAttribute.ImageInfo";
  v16 = sub_10002E87C();
  if (!*(a1 + 16))
  {

    goto LABEL_7;
  }

  v73 = a2;
  v74 = v2;
  v75 = v9;
  v18 = sub_10001FAA0(v16, v17);
  v20 = v19;

  if ((v20 & 1) == 0)
  {
LABEL_7:

    sub_10002E87C();
    sub_10002E7DC();
    sub_10001FEDC(&qword_100042EA8, &type metadata accessor for Explosion);
    swift_allocError();
    sub_10002E7CC();
    return swift_willThrow();
  }

  sub_100019DF8(*(a1 + 56) + 32 * v18, v79);
  sub_10001FD38(v79, v80);
  sub_100019DF8(v80, v79);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_9;
  }

  sub_10002DEAC();

  v21 = v75;
  if ((*(v75 + 48))(v7, 1, v8) == 1)
  {

    sub_10000E76C(v7, &qword_100043280, &qword_100034B80);
LABEL_9:
    sub_10002E87C();
    sub_10002E7DC();
    sub_10001FEDC(&qword_100042EA8, &type metadata accessor for Explosion);
    swift_allocError();
    sub_10002E7CC();
    swift_willThrow();
    return sub_1000121A8(v80);
  }

  (*(v21 + 32))(v15, v7, v8);
  v23 = sub_10002E87C();
  if (!*(a1 + 16))
  {

    goto LABEL_41;
  }

  v25 = sub_10001FAA0(v23, v24);
  v27 = v26;

  if ((v27 & 1) == 0 || (sub_100019DF8(*(a1 + 56) + 32 * v25, v79), (swift_dynamicCast() & 1) == 0))
  {

    v21 = v75;
LABEL_41:
    sub_10002E87C();
    sub_10002E7DC();
    sub_10001FEDC(&qword_100042EA8, &type metadata accessor for Explosion);
    swift_allocError();
    sub_10002E7CC();
    swift_willThrow();
    (*(v21 + 8))(v15, v8);
    return sub_1000121A8(v80);
  }

  v28 = *(&v78[0] + 1);
  v29 = *&v78[0];
  v30 = sub_10002E87C();
  if (!*(a1 + 16))
  {

    goto LABEL_45;
  }

  v71 = v29;
  v72 = v28;
  v32 = sub_10001FAA0(v30, v31);
  v34 = v33;

  if ((v34 & 1) == 0 || (sub_100019DF8(*(a1 + 56) + 32 * v32, v79), (swift_dynamicCast() & 1) == 0))
  {

LABEL_45:

    v51 = v75;
LABEL_46:
    sub_10002E87C();
    sub_10002E7DC();
    sub_10001FEDC(&qword_100042EA8, &type metadata accessor for Explosion);
    swift_allocError();
    sub_10002E7CC();
    swift_willThrow();
    (*(v51 + 8))(v15, v8);
    return sub_1000121A8(v80);
  }

  v35 = *(&v78[0] + 1);
  v36 = *&v78[0];
  v37 = sub_10002E87C();
  if (!*(a1 + 16))
  {

    v51 = v75;
LABEL_49:

    goto LABEL_46;
  }

  v68[1] = v36;
  v70 = v35;
  v39 = sub_10001FAA0(v37, v38);
  v41 = v40;

  if ((v41 & 1) == 0)
  {

    v51 = v75;
    goto LABEL_49;
  }

  sub_100019DF8(*(a1 + 56) + 32 * v39, v78);
  sub_10001FD38(v78, v79);
  sub_100019DF8(v79, v78);
  v42 = swift_dynamicCast();
  v43 = v75;
  if ((v42 & 1) == 0)
  {
LABEL_98:

    sub_10002E87C();
    sub_10002E7DC();
    sub_10001FEDC(&qword_100042EA8, &type metadata accessor for Explosion);
    swift_allocError();
    sub_10002E7CC();
    swift_willThrow();
    sub_1000121A8(v79);
    (*(v43 + 8))(v15, v8);
    return sub_1000121A8(v80);
  }

  result = v76;
  v44 = HIBYTE(v77) & 0xF;
  v45 = v76 & 0xFFFFFFFFFFFFLL;
  if ((v77 & 0x2000000000000000) != 0)
  {
    v46 = HIBYTE(v77) & 0xF;
  }

  else
  {
    v46 = v76 & 0xFFFFFFFFFFFFLL;
  }

  if (!v46)
  {

    goto LABEL_98;
  }

  if ((v77 & 0x1000000000000000) != 0)
  {
    v69 = sub_10001EB1C(v76, v77, 10);
    v61 = v67;
LABEL_97:

    if (v61)
    {
      goto LABEL_98;
    }

    v62 = sub_10002E87C();
    if (*(a1 + 16))
    {
      v64 = sub_10001FAA0(v62, v63);
      v66 = v65;

      if (v66)
      {
        sub_100019DF8(*(a1 + 56) + 32 * v64, v78);

        if (swift_dynamicCast())
        {
          (*(v75 + 16))(v13, v15, v8);
          sub_10002E59C();
LABEL_106:
          sub_1000121A8(v79);
          (*(v75 + 8))(v15, v8);
          return sub_1000121A8(v80);
        }

LABEL_105:

        sub_10002E87C();
        sub_10002E7DC();
        sub_10001FEDC(&qword_100042EA8, &type metadata accessor for Explosion);
        swift_allocError();
        sub_10002E7CC();
        swift_willThrow();
        goto LABEL_106;
      }
    }

    else
    {
    }

    goto LABEL_105;
  }

  if ((v77 & 0x2000000000000000) == 0)
  {
    if ((v76 & 0x1000000000000000) != 0)
    {
      result = ((v77 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      result = sub_10002EBFC();
    }

    v47 = *result;
    if (v47 == 43)
    {
      if (v45 >= 1)
      {
        v44 = v45 - 1;
        if (v45 != 1)
        {
          if (result)
          {
            v69 = 0;
            v54 = result + 1;
            while (1)
            {
              v55 = *v54 - 48;
              if (v55 > 9)
              {
                goto LABEL_95;
              }

              if (!is_mul_ok(v69, 0xAuLL))
              {
                goto LABEL_95;
              }

              v50 = __CFADD__(10 * v69, v55);
              v69 = 10 * v69 + v55;
              if (v50)
              {
                goto LABEL_95;
              }

              ++v54;
              if (!--v44)
              {
                goto LABEL_96;
              }
            }
          }

          goto LABEL_86;
        }

        goto LABEL_95;
      }

      goto LABEL_112;
    }

    if (v47 != 45)
    {
      if (v45)
      {
        if (result)
        {
          v69 = 0;
          while (1)
          {
            v58 = *result - 48;
            if (v58 > 9)
            {
              goto LABEL_95;
            }

            if (!is_mul_ok(v69, 0xAuLL))
            {
              goto LABEL_95;
            }

            v50 = __CFADD__(10 * v69, v58);
            v69 = 10 * v69 + v58;
            if (v50)
            {
              goto LABEL_95;
            }

            ++result;
            if (!--v45)
            {
              goto LABEL_87;
            }
          }
        }

        goto LABEL_86;
      }

LABEL_95:
      v69 = 0;
      LOBYTE(v44) = 1;
LABEL_96:
      LOBYTE(v76) = v44;
      v43 = v75;
      v61 = v44;
      goto LABEL_97;
    }

    if (v45 >= 1)
    {
      v44 = v45 - 1;
      if (v45 != 1)
      {
        if (result)
        {
          v69 = 0;
          v48 = result + 1;
          while (1)
          {
            v49 = *v48 - 48;
            if (v49 > 9)
            {
              goto LABEL_95;
            }

            if (!is_mul_ok(v69, 0xAuLL))
            {
              goto LABEL_95;
            }

            v50 = 10 * v69 >= v49;
            v69 = 10 * v69 - v49;
            if (!v50)
            {
              goto LABEL_95;
            }

            ++v48;
            if (!--v44)
            {
              goto LABEL_96;
            }
          }
        }

LABEL_86:
        v69 = 0;
LABEL_87:
        LOBYTE(v44) = 0;
        goto LABEL_96;
      }

      goto LABEL_95;
    }

    __break(1u);
LABEL_111:
    __break(1u);
LABEL_112:
    __break(1u);
    goto LABEL_113;
  }

  *&v78[0] = v76;
  *(&v78[0] + 1) = v77 & 0xFFFFFFFFFFFFFFLL;
  if (v76 != 43)
  {
    if (v76 != 45)
    {
      if (v44)
      {
        v69 = 0;
        v59 = v78;
        while (1)
        {
          v60 = *v59 - 48;
          if (v60 > 9)
          {
            break;
          }

          if (!is_mul_ok(v69, 0xAuLL))
          {
            break;
          }

          v50 = __CFADD__(10 * v69, v60);
          v69 = 10 * v69 + v60;
          if (v50)
          {
            break;
          }

          ++v59;
          if (!--v44)
          {
            goto LABEL_96;
          }
        }
      }

      goto LABEL_95;
    }

    if (v44)
    {
      if (--v44)
      {
        v69 = 0;
        v52 = v78 + 1;
        while (1)
        {
          v53 = *v52 - 48;
          if (v53 > 9)
          {
            break;
          }

          if (!is_mul_ok(v69, 0xAuLL))
          {
            break;
          }

          v50 = 10 * v69 >= v53;
          v69 = 10 * v69 - v53;
          if (!v50)
          {
            break;
          }

          ++v52;
          if (!--v44)
          {
            goto LABEL_96;
          }
        }
      }

      goto LABEL_95;
    }

    goto LABEL_111;
  }

  if (v44)
  {
    if (--v44)
    {
      v69 = 0;
      v56 = v78 + 1;
      while (1)
      {
        v57 = *v56 - 48;
        if (v57 > 9)
        {
          break;
        }

        if (!is_mul_ok(v69, 0xAuLL))
        {
          break;
        }

        v50 = __CFADD__(10 * v69, v57);
        v69 = 10 * v69 + v57;
        if (v50)
        {
          break;
        }

        ++v56;
        if (!--v44)
        {
          goto LABEL_96;
        }
      }
    }

    goto LABEL_95;
  }

LABEL_113:
  __break(1u);
  return result;
}

uint64_t sub_10001EA88()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 48, 7);
}