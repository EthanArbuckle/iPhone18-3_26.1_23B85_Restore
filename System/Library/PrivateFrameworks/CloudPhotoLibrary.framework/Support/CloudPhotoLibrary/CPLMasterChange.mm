@interface CPLMasterChange
- (id)dropExpungedResources:(id)a3 withExpungeableResourceStates:(id)a4;
- (id)expungeableResourceStatesFromCKRecord:(id)a3;
- (void)addExpungeableResourceStateToCKRecord:(id)a3;
- (void)fillCKRecordBuilder:(id)a3 scopeProvider:(id)a4;
- (void)fillWithCKRecord:(id)a3;
@end

@implementation CPLMasterChange

- (void)addExpungeableResourceStateToCKRecord:(id)a3
{
  v4 = a3;
  v5 = [(CPLMasterChange *)self expungeableResourceStates];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = sub_100084A0C(CPLCloudKitResourceKeys, [v10 resourceType]);
        if (v11 && +[CPLResource resourceTypeSupportsResourceExpunge:](CPLResource, "resourceTypeSupportsResourceExpunge:", [v10 resourceType]))
        {
          if ([v10 expungedState])
          {
            v12 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v10 expungedState]);
            v13 = sub_1001A8CC8(v11);
            [v4 setObject:v12 forKey:v13];
          }

          else
          {
            v12 = sub_1001A8CC8(v11);
            [v4 setObject:0 forKey:v12];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }
}

- (id)expungeableResourceStatesFromCKRecord:(id)a3
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_1000044C0;
  v13 = sub_100005344;
  v14 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100096B6C;
  v6[3] = &unk_100276688;
  v6[4] = self;
  v3 = a3;
  v7 = v3;
  v8 = &v9;
  [CPLResource enumerateResourceTypesWithBlock:v6];
  v4 = [v10[5] copy];

  _Block_object_dispose(&v9, 8);

  return v4;
}

- (id)dropExpungedResources:(id)a3 withExpungeableResourceStates:(id)a4
{
  v5 = a3;
  v23 = a4;
  v20 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v5, "count")}];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v5;
  v24 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v24)
  {
    v22 = *v30;
    do
    {
      for (i = 0; i != v24; i = i + 1)
      {
        if (*v30 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v29 + 1) + 8 * i);
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v8 = v23;
        v9 = [v8 countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v26;
          while (2)
          {
            for (j = 0; j != v10; j = j + 1)
            {
              if (*v26 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v25 + 1) + 8 * j);
              v14 = [v13 resourceType];
              if (v14 == [v7 resourceType])
              {
                if ([v13 expungedState] == 2 || (objc_msgSend(v13, "expungedDate"), v15 = objc_claimAutoreleasedReturnValue(), +[NSDate date](NSDate, "date"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v15, "compare:", v16), v16, v15, v17 == -1))
                {

                  goto LABEL_18;
                }
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v25 objects:v33 count:16];
            if (v10)
            {
              continue;
            }

            break;
          }
        }

        [v20 addObject:v7];
LABEL_18:
        ;
      }

      v24 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v24);
  }

  v18 = [v20 copy];

  return v18;
}

- (void)fillWithCKRecord:(id)a3
{
  v43 = a3;
  v4 = self;
  v5 = [v43 cpl_decryptedObjectForKey:@"itemTypeEnc" validateClass:objc_opt_class()];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [v43 objectForKeyedSubscript:@"itemType"];
  }

  v8 = v7;

  [(CPLMasterChange *)v4 setItemType:v8];
  v9 = [v43 cpl_legacyDecryptedObjectForKey:@"filenameEnc" validateClass:objc_opt_class()];
  [(CPLMasterChange *)v4 setFilename:v9];

  v10 = [v43 cpl_decryptedObjectForKey:@"originalCreationDateEnc" validateClass:objc_opt_class()];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = [v43 objectForKeyedSubscript:@"originalCreationDate"];
  }

  v13 = v12;

  [(CPLMasterChange *)v4 setCreationDate:v13];
  v14 = [v43 objectForKey:@"importDate"];
  [(CPLMasterChange *)v4 setImportDate:v14];

  v15 = [v43 objectForKey:@"importGroupId"];
  [(CPLMasterChange *)v4 setImportGroupIdentifier:v15];

  v16 = [v43 objectForKey:@"mediaMetaDataType"];
  [(CPLMasterChange *)v4 setMediaMetaDataType:v16];

  v17 = [v43 cpl_legacyDecryptedObjectForKey:@"mediaMetaDataEnc" validateClass:objc_opt_class()];
  [(CPLMasterChange *)v4 setMediaMetaData:v17];

  v18 = [v43 cpl_objectForKey:@"originalOrientation" validateClass:objc_opt_class()];
  v19 = v18;
  if (!v18)
  {
    v18 = &off_10028EE30;
  }

  -[CPLMasterChange setOriginalOrientation:](v4, "setOriginalOrientation:", [v18 integerValue]);

  v20 = [v43 cpl_objectForKey:@"fullSizeJPEGSource" validateClass:objc_opt_class()];
  v21 = v20;
  if (!v20)
  {
    v20 = &off_10028EE30;
  }

  -[CPLMasterChange setFullSizeJPEGSource:](v4, "setFullSizeJPEGSource:", [v20 unsignedIntegerValue]);

  v22 = [v43 cpl_decryptedObjectForKey:@"originatingFingerprintEnc" validateClass:objc_opt_class()];
  v23 = v22;
  if (v22)
  {
    v24 = v22;
  }

  else
  {
    v24 = [v43 objectForKeyedSubscript:@"originatingFingerprint"];
  }

  v25 = v24;

  [(CPLMasterChange *)v4 setOriginatingFingerprint:v25];
  v26 = [v43 cpl_objectForKey:@"importedBy" validateClass:objc_opt_class()];
  v27 = v26;
  if (!v26)
  {
    v26 = &off_10028EE30;
  }

  -[CPLMasterChange setImportedBy:](v4, "setImportedBy:", [v26 integerValue]);

  v28 = [v43 cpl_legacyDecryptedObjectForKey:@"importedByBundleIdentifierEnc" validateClass:objc_opt_class()];
  [(CPLMasterChange *)v4 setImportedByBundleIdentifier:v28];

  v29 = [v43 cpl_legacyDecryptedObjectForKey:@"importedByDisplayNameEnc" validateClass:objc_opt_class()];
  [(CPLMasterChange *)v4 setImportedByDisplayName:v29];

  v30 = [v43 cpl_decryptedObjectForKey:@"videoFrameRateEnc" validateClass:objc_opt_class()];
  v31 = v30;
  if (v30)
  {
    v32 = v30;
  }

  else
  {
    v32 = [v43 objectForKeyedSubscript:@"videoFrameRate"];
  }

  v33 = v32;

  if (v33)
  {
    v34 = v33;
  }

  else
  {
    v34 = &off_10028EE30;
  }

  -[CPLMasterChange setVideoFrameRate:](v4, "setVideoFrameRate:", [v34 integerValue]);

  v35 = [v43 cpl_decryptedObjectForKey:@"codecEnc" validateClass:objc_opt_class()];
  v36 = v35;
  if (v35)
  {
    v37 = v35;
  }

  else
  {
    v37 = [v43 objectForKeyedSubscript:@"codec"];
  }

  v38 = v37;

  [(CPLMasterChange *)v4 setCodec:v38];
  v39 = [(CPLMasterChange *)v4 expungeableResourceStatesFromCKRecord:v43];
  [(CPLMasterChange *)v4 setExpungeableResourceStates:v39];

  v40 = [(CPLMasterChange *)v4 resources];
  v41 = [(CPLMasterChange *)v4 expungeableResourceStates];
  v42 = [(CPLMasterChange *)v4 dropExpungedResources:v40 withExpungeableResourceStates:v41];
  [(CPLMasterChange *)v4 setResources:v42];
}

- (void)fillCKRecordBuilder:(id)a3 scopeProvider:(id)a4
{
  v118 = a3;
  v6 = a4;
  v7 = self;
  v8 = [v6 fingerprintContext];
  if ([(CPLMasterChange *)v7 hasChangeType:2])
  {
    if (([(CPLMasterChange *)v7 isFullRecord]& 1) != 0)
    {
      v9 = 0;
    }

    else
    {
      v9 = [(CPLMasterChange *)v7 attachedDiffTracker];

      if (v9)
      {
        if ((-[CPLMasterChange isFullRecord](v7, "isFullRecord") & 1) == 0 && ![v9 areObjectsDifferentOnProperty:@"itemType" changeType:2])
        {
          goto LABEL_16;
        }

        v10 = 0;
LABEL_9:
        if ([(CPLMasterChange *)v7 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"itemType")])
        {
          v11 = [(CPLMasterChange *)v7 itemType];
          v12 = v11;
          if (v11)
          {
            v13 = v11;
            if ([(CPLMasterChange *)v7 shouldUseEncryptedPropertiesIfPossibleWithContext:v8])
            {
              v14 = v9;
              v15 = CPLFuzziedFileUTI(v13);
              v16 = v13;
              if (v15 && ([v15 isEqual:v16] & 1) != 0)
              {

                [v118 setObject:v16 forKey:@"itemType"];
                v17 = objc_opt_class();
                v18 = v118;
                v19 = 0;
              }

              else
              {

                v21 = CPLFuzziedFileUTI(v16);
                [v118 setObject:v21 forKey:@"itemType"];

                v17 = objc_opt_class();
                v18 = v118;
                v19 = v16;
              }

              [v18 setEncryptedObject:v19 forKey:@"itemTypeEnc" validateClass:v17];

              v9 = v14;
            }

            else
            {
              [v118 setObject:v13 forKey:@"itemType"];
              [v118 setEncryptedObject:0 forKey:@"itemTypeEnc" validateClass:objc_opt_class()];
            }

            v22 = [NSNumber numberWithUnsignedInteger:[(CPLMasterChange *)v7 dataClassType]];
            [v118 setObject:v22 forKey:@"dataClassType"];
          }

          if (v10)
          {
            goto LABEL_24;
          }
        }

        else if (v10)
        {
LABEL_24:
          v20 = 1;
          goto LABEL_25;
        }

LABEL_16:
        if ((-[CPLMasterChange isFullRecord](v7, "isFullRecord") & 1) == 0 && ![v9 areObjectsDifferentOnProperty:@"filename" changeType:2])
        {
          goto LABEL_28;
        }

        v20 = 0;
LABEL_25:
        if (-[CPLMasterChange shouldApplyPropertiesWithSelector:](v7, "shouldApplyPropertiesWithSelector:", NSSelectorFromString(@"filename")) && (-[CPLMasterChange filename](v7, "filename"), v23 = objc_claimAutoreleasedReturnValue(), v24 = [v23 length], v23, v24))
        {
          v25 = [(CPLMasterChange *)v7 filename];
          [v118 setLegacyEncryptedObject:v25 forKey:@"filenameEnc"];

          if ((v20 & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        else if ((v20 & 1) == 0)
        {
LABEL_28:
          if ((-[CPLMasterChange isFullRecord](v7, "isFullRecord") & 1) == 0 && ![v9 areObjectsDifferentOnProperty:@"creationDate" changeType:2])
          {
            goto LABEL_45;
          }

          v26 = 0;
LABEL_33:
          if (![(CPLMasterChange *)v7 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"creationDate")])
          {
            if (v26)
            {
LABEL_59:
              v43 = 1;
              goto LABEL_60;
            }

LABEL_45:
            if ((-[CPLMasterChange isFullRecord](v7, "isFullRecord") & 1) == 0 && ![v9 areObjectsDifferentOnProperty:@"importDate" changeType:2])
            {
              goto LABEL_64;
            }

            v43 = 0;
LABEL_60:
            if ([(CPLMasterChange *)v7 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"importDate")])
            {
              v56 = [(CPLMasterChange *)v7 importDate];
              [v118 setObject:v56 forKey:@"importDate"];

              if (v43)
              {
LABEL_62:
                v57 = 1;
                goto LABEL_67;
              }
            }

            else if (v43)
            {
              goto LABEL_62;
            }

LABEL_64:
            if ((-[CPLMasterChange isFullRecord](v7, "isFullRecord") & 1) == 0 && ![v9 areObjectsDifferentOnProperty:@"importGroupIdentifier" changeType:2])
            {
              goto LABEL_71;
            }

            v57 = 0;
LABEL_67:
            if ([(CPLMasterChange *)v7 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"importGroupIdentifier")])
            {
              v58 = [(CPLMasterChange *)v7 importGroupIdentifier];
              [v118 setObject:v58 forKey:@"importGroupId"];

              if (v57)
              {
LABEL_69:
                v59 = 1;
                goto LABEL_74;
              }
            }

            else if (v57)
            {
              goto LABEL_69;
            }

LABEL_71:
            if ((-[CPLMasterChange isFullRecord](v7, "isFullRecord") & 1) == 0 && ![v9 areObjectsDifferentOnProperty:@"mediaMetaDataType" changeType:2])
            {
              goto LABEL_78;
            }

            v59 = 0;
LABEL_74:
            if ([(CPLMasterChange *)v7 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"mediaMetaDataType")])
            {
              v60 = [(CPLMasterChange *)v7 mediaMetaDataType];
              [v118 setObject:v60 forKey:@"mediaMetaDataType"];

              if (v59)
              {
LABEL_76:
                v61 = 1;
                goto LABEL_81;
              }
            }

            else if (v59)
            {
              goto LABEL_76;
            }

LABEL_78:
            if ((-[CPLMasterChange isFullRecord](v7, "isFullRecord") & 1) == 0 && ![v9 areObjectsDifferentOnProperty:@"mediaMetaData" changeType:2])
            {
              goto LABEL_85;
            }

            v61 = 0;
LABEL_81:
            if ([(CPLMasterChange *)v7 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"mediaMetaData")])
            {
              v62 = [(CPLMasterChange *)v7 mediaMetaData];
              [v118 setLegacyEncryptedObject:v62 forKey:@"mediaMetaDataEnc"];

              if (v61)
              {
LABEL_83:
                v63 = 1;
                goto LABEL_88;
              }
            }

            else if (v61)
            {
              goto LABEL_83;
            }

LABEL_85:
            if ((-[CPLMasterChange isFullRecord](v7, "isFullRecord") & 1) == 0 && ![v9 areObjectsDifferentOnProperty:@"originalOrientation" changeType:2])
            {
              goto LABEL_92;
            }

            v63 = 0;
LABEL_88:
            if ([(CPLMasterChange *)v7 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"originalOrientation")])
            {
              v64 = [NSNumber numberWithInteger:[(CPLMasterChange *)v7 originalOrientation]];
              [v118 setObject:v64 forKey:@"originalOrientation"];

              if (v63)
              {
LABEL_90:
                v65 = 1;
                goto LABEL_95;
              }
            }

            else if (v63)
            {
              goto LABEL_90;
            }

LABEL_92:
            if ((-[CPLMasterChange isFullRecord](v7, "isFullRecord") & 1) == 0 && ![v9 areObjectsDifferentOnProperty:@"fullSizeJPEGSource" changeType:2])
            {
              goto LABEL_99;
            }

            v65 = 0;
LABEL_95:
            if ([(CPLMasterChange *)v7 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"fullSizeJPEGSource")])
            {
              v66 = [NSNumber numberWithUnsignedInteger:[(CPLMasterChange *)v7 fullSizeJPEGSource]];
              [v118 setObject:v66 forKey:@"fullSizeJPEGSource"];

              if (v65)
              {
LABEL_97:
                v67 = 1;
                goto LABEL_102;
              }
            }

            else if (v65)
            {
              goto LABEL_97;
            }

LABEL_99:
            if ((-[CPLMasterChange isFullRecord](v7, "isFullRecord") & 1) == 0 && ![v9 areObjectsDifferentOnProperty:@"originatingFingerprint" changeType:2])
            {
              goto LABEL_107;
            }

            v67 = 0;
LABEL_102:
            if (![(CPLMasterChange *)v7 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"originatingFingerprint")])
            {
              if (v67)
              {
LABEL_114:
                v72 = 1;
                goto LABEL_115;
              }

LABEL_107:
              if ((-[CPLMasterChange isFullRecord](v7, "isFullRecord") & 1) == 0 && ![v9 areObjectsDifferentOnProperty:@"importedBy" changeType:2])
              {
                goto LABEL_119;
              }

              v72 = 0;
LABEL_115:
              if ([(CPLMasterChange *)v7 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"importedBy")])
              {
                v75 = [NSNumber numberWithShort:[(CPLMasterChange *)v7 importedBy]];
                [v118 setObject:v75 forKey:@"importedBy"];

                if (v72)
                {
LABEL_117:
                  v76 = 1;
                  goto LABEL_122;
                }
              }

              else if (v72)
              {
                goto LABEL_117;
              }

LABEL_119:
              if ((-[CPLMasterChange isFullRecord](v7, "isFullRecord") & 1) == 0 && ![v9 areObjectsDifferentOnProperty:@"importedByBundleIdentifier" changeType:2])
              {
                goto LABEL_126;
              }

              v76 = 0;
LABEL_122:
              if ([(CPLMasterChange *)v7 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"importedByBundleIdentifier")])
              {
                v77 = [(CPLMasterChange *)v7 importedByBundleIdentifier];
                [v118 setLegacyEncryptedObject:v77 forKey:@"importedByBundleIdentifierEnc"];

                if (v76)
                {
LABEL_124:
                  v78 = 1;
                  goto LABEL_129;
                }
              }

              else if (v76)
              {
                goto LABEL_124;
              }

LABEL_126:
              if ((-[CPLMasterChange isFullRecord](v7, "isFullRecord") & 1) == 0 && ![v9 areObjectsDifferentOnProperty:@"importedByDisplayName" changeType:2])
              {
                goto LABEL_133;
              }

              v78 = 0;
LABEL_129:
              if ([(CPLMasterChange *)v7 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"importedByDisplayName")])
              {
                v79 = [(CPLMasterChange *)v7 importedByDisplayName];
                [v118 setLegacyEncryptedObject:v79 forKey:@"importedByDisplayNameEnc"];

                if (v78)
                {
LABEL_131:
                  v80 = 1;
                  goto LABEL_136;
                }
              }

              else if (v78)
              {
                goto LABEL_131;
              }

LABEL_133:
              if ((-[CPLMasterChange isFullRecord](v7, "isFullRecord") & 1) == 0 && ![v9 areObjectsDifferentOnProperty:@"videoFrameRate" changeType:2])
              {
                goto LABEL_143;
              }

              v80 = 0;
LABEL_136:
              if (![(CPLMasterChange *)v7 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"videoFrameRate")])
              {
                if (v80)
                {
LABEL_170:
                  v84 = 1;
                  goto LABEL_171;
                }

LABEL_143:
                if ((-[CPLMasterChange isFullRecord](v7, "isFullRecord") & 1) == 0 && ![v9 areObjectsDifferentOnProperty:@"codec" changeType:2])
                {
LABEL_194:
                  if ((-[CPLMasterChange isFullRecord](v7, "isFullRecord") & 1) == 0 && ![v9 areObjectsDifferentOnProperty:@"expungeableResourceStates" changeType:2])
                  {
LABEL_198:

                    goto LABEL_199;
                  }

LABEL_196:
                  if ([(CPLMasterChange *)v7 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"expungeableResourceStates")])
                  {
                    [(CPLMasterChange *)v7 addExpungeableResourceStateToCKRecord:v118];
                  }

                  goto LABEL_198;
                }

                v84 = 0;
LABEL_171:
                if (![(CPLMasterChange *)v7 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"codec")])
                {
                  goto LABEL_193;
                }

                v98 = [(CPLMasterChange *)v7 codec];
                if (v98)
                {
                  if ([(CPLMasterChange *)v7 shouldUseEncryptedPropertiesIfPossibleWithContext:v8])
                  {
                    v117 = v9;
                    v114 = v8;
                    v99 = v98;
                    v100 = 0;
                    v101 = @"other";
                    while (1)
                    {
                      v102 = off_100276890[v100];
                      if ([v99 rangeOfString:v102 options:{1, v114}] != 0x7FFFFFFFFFFFFFFFLL)
                      {
                        break;
                      }

                      if (++v100 == 9)
                      {
                        goto LABEL_182;
                      }
                    }

                    v101 = v102;
LABEL_182:

                    v105 = v101;
                    v106 = v99;
                    if (v105 && ([(__CFString *)v105 isEqual:v106]& 1) != 0)
                    {

                      [v118 setObject:v106 forKey:@"codec"];
                      v107 = objc_opt_class();
                      v108 = v118;
                      v109 = 0;
                    }

                    else
                    {

                      v110 = v106;
                      v111 = 0;
                      v112 = @"other";
                      while (1)
                      {
                        v113 = off_100276890[v111];
                        if ([v110 rangeOfString:v113 options:1] != 0x7FFFFFFFFFFFFFFFLL)
                        {
                          break;
                        }

                        if (++v111 == 9)
                        {
                          goto LABEL_190;
                        }
                      }

                      v112 = v113;
LABEL_190:

                      [v118 setObject:v112 forKey:@"codec"];
                      v107 = objc_opt_class();
                      v108 = v118;
                      v109 = v110;
                    }

                    [v108 setEncryptedObject:v109 forKey:@"codecEnc" validateClass:v107];
                    v8 = v114;

                    v9 = v117;
                    goto LABEL_192;
                  }

                  v103 = v118;
                  v104 = v98;
                }

                else
                {
                  v103 = v118;
                  v104 = 0;
                }

                [v103 setObject:v104 forKey:@"codec"];
                [v118 setEncryptedObject:0 forKey:@"codecEnc" validateClass:objc_opt_class()];
LABEL_192:

LABEL_193:
                if (v84)
                {
                  goto LABEL_196;
                }

                goto LABEL_194;
              }

              v81 = [(CPLMasterChange *)v7 videoFrameRate];
              v82 = [NSNumber numberWithShort:v81];
              if (v82)
              {
                if ([(CPLMasterChange *)v7 shouldUseEncryptedPropertiesIfPossibleWithContext:v8])
                {
                  v116 = v9;
                  if (v81)
                  {
                    if (v81 >= 23)
                    {
                      v87 = 9;
                      v88 = &qword_100243E98;
                      while (1)
                      {
                        v83 = *(v88 - 1);
                        if (v83 >= v81)
                        {
                          break;
                        }

                        v88 += 2;
                        if (!--v87)
                        {
                          goto LABEL_155;
                        }
                      }

                      v83 = *v88;
                    }

                    else
                    {
                      v83 = 22;
                    }
                  }

                  else
                  {
                    v83 = 0;
                  }

LABEL_155:
                  v89 = [NSNumber numberWithInteger:v83];
                  v90 = v82;
                  if (v89 && ([v89 isEqual:v90] & 1) != 0)
                  {

                    [v118 setObject:v90 forKey:@"videoFrameRate"];
                    v91 = objc_opt_class();
                    v92 = v118;
                    v93 = 0;
                  }

                  else
                  {

                    if (v81)
                    {
                      if (v81 >= 23)
                      {
                        v95 = 9;
                        v96 = &qword_100243E98;
                        while (1)
                        {
                          v94 = *(v96 - 1);
                          if (v94 >= v81)
                          {
                            break;
                          }

                          v96 += 2;
                          if (!--v95)
                          {
                            goto LABEL_167;
                          }
                        }

                        v94 = *v96;
                      }

                      else
                      {
                        v94 = 22;
                      }
                    }

                    else
                    {
                      v94 = 0;
                    }

LABEL_167:
                    v97 = [NSNumber numberWithInteger:v94];
                    [v118 setObject:v97 forKey:@"videoFrameRate"];

                    v91 = objc_opt_class();
                    v92 = v118;
                    v93 = v90;
                  }

                  [v92 setEncryptedObject:v93 forKey:@"videoFrameRateEnc" validateClass:v91];

                  v9 = v116;
LABEL_169:

                  if (v80)
                  {
                    goto LABEL_170;
                  }

                  goto LABEL_143;
                }

                v85 = v118;
                v86 = v82;
              }

              else
              {
                v85 = v118;
                v86 = 0;
              }

              [v85 setObject:v86 forKey:@"videoFrameRate"];
              [v118 setEncryptedObject:0 forKey:@"videoFrameRateEnc" validateClass:objc_opt_class()];
              goto LABEL_169;
            }

            v68 = [(CPLMasterChange *)v7 originatingFingerprint];
            if (v68)
            {
              if ([(CPLMasterChange *)v7 shouldUseEncryptedPropertiesIfPossibleWithContext:v8])
              {
                [v118 setObject:0 forKey:@"originatingFingerprint"];
                v69 = objc_opt_class();
                v70 = v118;
                v71 = v68;
                goto LABEL_113;
              }

              v73 = v118;
              v74 = v68;
            }

            else
            {
              v73 = v118;
              v74 = 0;
            }

            [v73 setObject:v74 forKey:@"originatingFingerprint"];
            v69 = objc_opt_class();
            v70 = v118;
            v71 = 0;
LABEL_113:
            [v70 setEncryptedObject:v71 forKey:@"originatingFingerprintEnc" validateClass:v69];

            if (v67)
            {
              goto LABEL_114;
            }

            goto LABEL_107;
          }

          v27 = [(CPLMasterChange *)v7 creationDate];
          if (v27)
          {
            if ([(CPLMasterChange *)v7 shouldUseEncryptedPropertiesIfPossibleWithContext:v8])
            {
              v115 = v9;
              v28 = v27;
              v29 = +[NSDate date];
              [v29 timeIntervalSinceReferenceDate];
              v31 = v30;
              [v28 timeIntervalSinceReferenceDate];
              v33 = v32;
              v34 = round(v32) + 1.0;
              v35 = arc4random_uniform(0x3Bu);
              if (v34 + v35 <= v31 || v33 >= v31)
              {
                v31 = v34 + v35;
              }

              v37 = [[NSDate alloc] initWithTimeIntervalSinceReferenceDate:v31];

              v38 = v37;
              v39 = v28;
              if (v38 && ([v38 isEqual:v39] & 1) != 0)
              {

                [v118 setObject:v39 forKey:@"originalCreationDate"];
                v40 = objc_opt_class();
                v41 = v118;
                v42 = 0;
              }

              else
              {

                v46 = v39;
                v47 = +[NSDate date];
                [v47 timeIntervalSinceReferenceDate];
                v49 = v48;
                [v46 timeIntervalSinceReferenceDate];
                v51 = v50;
                v52 = round(v50) + 1.0;
                v53 = arc4random_uniform(0x3Bu);
                if (v52 + v53 <= v49 || v51 >= v49)
                {
                  v49 = v52 + v53;
                }

                v55 = [[NSDate alloc] initWithTimeIntervalSinceReferenceDate:v49];

                [v118 setObject:v55 forKey:@"originalCreationDate"];
                v40 = objc_opt_class();
                v41 = v118;
                v42 = v46;
              }

              [v41 setEncryptedObject:v42 forKey:@"originalCreationDateEnc" validateClass:v40];
              v9 = v115;

LABEL_58:
              if (v26)
              {
                goto LABEL_59;
              }

              goto LABEL_45;
            }

            v44 = v118;
            v45 = v27;
          }

          else
          {
            v44 = v118;
            v45 = 0;
          }

          [v44 setObject:v45 forKey:@"originalCreationDate"];
          [v118 setEncryptedObject:0 forKey:@"originalCreationDateEnc" validateClass:objc_opt_class()];
          goto LABEL_58;
        }

        v26 = 1;
        goto LABEL_33;
      }
    }

    v10 = 1;
    goto LABEL_9;
  }

LABEL_199:
}

@end