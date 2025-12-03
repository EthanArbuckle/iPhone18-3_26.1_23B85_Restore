@interface CPLMasterChange
- (id)dropExpungedResources:(id)resources withExpungeableResourceStates:(id)states;
- (id)expungeableResourceStatesFromCKRecord:(id)record;
- (void)addExpungeableResourceStateToCKRecord:(id)record;
- (void)fillCKRecordBuilder:(id)builder scopeProvider:(id)provider;
- (void)fillWithCKRecord:(id)record;
@end

@implementation CPLMasterChange

- (void)addExpungeableResourceStateToCKRecord:(id)record
{
  recordCopy = record;
  expungeableResourceStates = [(CPLMasterChange *)self expungeableResourceStates];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [expungeableResourceStates countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(expungeableResourceStates);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = sub_100084A0C(CPLCloudKitResourceKeys, [v10 resourceType]);
        if (v11 && +[CPLResource resourceTypeSupportsResourceExpunge:](CPLResource, "resourceTypeSupportsResourceExpunge:", [v10 resourceType]))
        {
          if ([v10 expungedState])
          {
            v12 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v10 expungedState]);
            v13 = sub_1001A8CC8(v11);
            [recordCopy setObject:v12 forKey:v13];
          }

          else
          {
            v12 = sub_1001A8CC8(v11);
            [recordCopy setObject:0 forKey:v12];
          }
        }
      }

      v7 = [expungeableResourceStates countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }
}

- (id)expungeableResourceStatesFromCKRecord:(id)record
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
  recordCopy = record;
  v7 = recordCopy;
  v8 = &v9;
  [CPLResource enumerateResourceTypesWithBlock:v6];
  v4 = [v10[5] copy];

  _Block_object_dispose(&v9, 8);

  return v4;
}

- (id)dropExpungedResources:(id)resources withExpungeableResourceStates:(id)states
{
  resourcesCopy = resources;
  statesCopy = states;
  v20 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(resourcesCopy, "count")}];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = resourcesCopy;
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
        v8 = statesCopy;
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
              resourceType = [v13 resourceType];
              if (resourceType == [v7 resourceType])
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

- (void)fillWithCKRecord:(id)record
{
  recordCopy = record;
  selfCopy = self;
  v5 = [recordCopy cpl_decryptedObjectForKey:@"itemTypeEnc" validateClass:objc_opt_class()];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [recordCopy objectForKeyedSubscript:@"itemType"];
  }

  v8 = v7;

  [(CPLMasterChange *)selfCopy setItemType:v8];
  v9 = [recordCopy cpl_legacyDecryptedObjectForKey:@"filenameEnc" validateClass:objc_opt_class()];
  [(CPLMasterChange *)selfCopy setFilename:v9];

  v10 = [recordCopy cpl_decryptedObjectForKey:@"originalCreationDateEnc" validateClass:objc_opt_class()];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = [recordCopy objectForKeyedSubscript:@"originalCreationDate"];
  }

  v13 = v12;

  [(CPLMasterChange *)selfCopy setCreationDate:v13];
  v14 = [recordCopy objectForKey:@"importDate"];
  [(CPLMasterChange *)selfCopy setImportDate:v14];

  v15 = [recordCopy objectForKey:@"importGroupId"];
  [(CPLMasterChange *)selfCopy setImportGroupIdentifier:v15];

  v16 = [recordCopy objectForKey:@"mediaMetaDataType"];
  [(CPLMasterChange *)selfCopy setMediaMetaDataType:v16];

  v17 = [recordCopy cpl_legacyDecryptedObjectForKey:@"mediaMetaDataEnc" validateClass:objc_opt_class()];
  [(CPLMasterChange *)selfCopy setMediaMetaData:v17];

  v18 = [recordCopy cpl_objectForKey:@"originalOrientation" validateClass:objc_opt_class()];
  v19 = v18;
  if (!v18)
  {
    v18 = &off_10028EE30;
  }

  -[CPLMasterChange setOriginalOrientation:](selfCopy, "setOriginalOrientation:", [v18 integerValue]);

  v20 = [recordCopy cpl_objectForKey:@"fullSizeJPEGSource" validateClass:objc_opt_class()];
  v21 = v20;
  if (!v20)
  {
    v20 = &off_10028EE30;
  }

  -[CPLMasterChange setFullSizeJPEGSource:](selfCopy, "setFullSizeJPEGSource:", [v20 unsignedIntegerValue]);

  v22 = [recordCopy cpl_decryptedObjectForKey:@"originatingFingerprintEnc" validateClass:objc_opt_class()];
  v23 = v22;
  if (v22)
  {
    v24 = v22;
  }

  else
  {
    v24 = [recordCopy objectForKeyedSubscript:@"originatingFingerprint"];
  }

  v25 = v24;

  [(CPLMasterChange *)selfCopy setOriginatingFingerprint:v25];
  v26 = [recordCopy cpl_objectForKey:@"importedBy" validateClass:objc_opt_class()];
  v27 = v26;
  if (!v26)
  {
    v26 = &off_10028EE30;
  }

  -[CPLMasterChange setImportedBy:](selfCopy, "setImportedBy:", [v26 integerValue]);

  v28 = [recordCopy cpl_legacyDecryptedObjectForKey:@"importedByBundleIdentifierEnc" validateClass:objc_opt_class()];
  [(CPLMasterChange *)selfCopy setImportedByBundleIdentifier:v28];

  v29 = [recordCopy cpl_legacyDecryptedObjectForKey:@"importedByDisplayNameEnc" validateClass:objc_opt_class()];
  [(CPLMasterChange *)selfCopy setImportedByDisplayName:v29];

  v30 = [recordCopy cpl_decryptedObjectForKey:@"videoFrameRateEnc" validateClass:objc_opt_class()];
  v31 = v30;
  if (v30)
  {
    v32 = v30;
  }

  else
  {
    v32 = [recordCopy objectForKeyedSubscript:@"videoFrameRate"];
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

  -[CPLMasterChange setVideoFrameRate:](selfCopy, "setVideoFrameRate:", [v34 integerValue]);

  v35 = [recordCopy cpl_decryptedObjectForKey:@"codecEnc" validateClass:objc_opt_class()];
  v36 = v35;
  if (v35)
  {
    v37 = v35;
  }

  else
  {
    v37 = [recordCopy objectForKeyedSubscript:@"codec"];
  }

  v38 = v37;

  [(CPLMasterChange *)selfCopy setCodec:v38];
  v39 = [(CPLMasterChange *)selfCopy expungeableResourceStatesFromCKRecord:recordCopy];
  [(CPLMasterChange *)selfCopy setExpungeableResourceStates:v39];

  resources = [(CPLMasterChange *)selfCopy resources];
  expungeableResourceStates = [(CPLMasterChange *)selfCopy expungeableResourceStates];
  v42 = [(CPLMasterChange *)selfCopy dropExpungedResources:resources withExpungeableResourceStates:expungeableResourceStates];
  [(CPLMasterChange *)selfCopy setResources:v42];
}

- (void)fillCKRecordBuilder:(id)builder scopeProvider:(id)provider
{
  builderCopy = builder;
  providerCopy = provider;
  selfCopy = self;
  fingerprintContext = [providerCopy fingerprintContext];
  if ([(CPLMasterChange *)selfCopy hasChangeType:2])
  {
    if (([(CPLMasterChange *)selfCopy isFullRecord]& 1) != 0)
    {
      attachedDiffTracker = 0;
    }

    else
    {
      attachedDiffTracker = [(CPLMasterChange *)selfCopy attachedDiffTracker];

      if (attachedDiffTracker)
      {
        if ((-[CPLMasterChange isFullRecord](selfCopy, "isFullRecord") & 1) == 0 && ![attachedDiffTracker areObjectsDifferentOnProperty:@"itemType" changeType:2])
        {
          goto LABEL_16;
        }

        v10 = 0;
LABEL_9:
        if ([(CPLMasterChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"itemType")])
        {
          itemType = [(CPLMasterChange *)selfCopy itemType];
          v12 = itemType;
          if (itemType)
          {
            v13 = itemType;
            if ([(CPLMasterChange *)selfCopy shouldUseEncryptedPropertiesIfPossibleWithContext:fingerprintContext])
            {
              v14 = attachedDiffTracker;
              v15 = CPLFuzziedFileUTI(v13);
              v16 = v13;
              if (v15 && ([v15 isEqual:v16] & 1) != 0)
              {

                [builderCopy setObject:v16 forKey:@"itemType"];
                v17 = objc_opt_class();
                v18 = builderCopy;
                v19 = 0;
              }

              else
              {

                v21 = CPLFuzziedFileUTI(v16);
                [builderCopy setObject:v21 forKey:@"itemType"];

                v17 = objc_opt_class();
                v18 = builderCopy;
                v19 = v16;
              }

              [v18 setEncryptedObject:v19 forKey:@"itemTypeEnc" validateClass:v17];

              attachedDiffTracker = v14;
            }

            else
            {
              [builderCopy setObject:v13 forKey:@"itemType"];
              [builderCopy setEncryptedObject:0 forKey:@"itemTypeEnc" validateClass:objc_opt_class()];
            }

            v22 = [NSNumber numberWithUnsignedInteger:[(CPLMasterChange *)selfCopy dataClassType]];
            [builderCopy setObject:v22 forKey:@"dataClassType"];
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
        if ((-[CPLMasterChange isFullRecord](selfCopy, "isFullRecord") & 1) == 0 && ![attachedDiffTracker areObjectsDifferentOnProperty:@"filename" changeType:2])
        {
          goto LABEL_28;
        }

        v20 = 0;
LABEL_25:
        if (-[CPLMasterChange shouldApplyPropertiesWithSelector:](selfCopy, "shouldApplyPropertiesWithSelector:", NSSelectorFromString(@"filename")) && (-[CPLMasterChange filename](selfCopy, "filename"), v23 = objc_claimAutoreleasedReturnValue(), v24 = [v23 length], v23, v24))
        {
          filename = [(CPLMasterChange *)selfCopy filename];
          [builderCopy setLegacyEncryptedObject:filename forKey:@"filenameEnc"];

          if ((v20 & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        else if ((v20 & 1) == 0)
        {
LABEL_28:
          if ((-[CPLMasterChange isFullRecord](selfCopy, "isFullRecord") & 1) == 0 && ![attachedDiffTracker areObjectsDifferentOnProperty:@"creationDate" changeType:2])
          {
            goto LABEL_45;
          }

          v26 = 0;
LABEL_33:
          if (![(CPLMasterChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"creationDate")])
          {
            if (v26)
            {
LABEL_59:
              v43 = 1;
              goto LABEL_60;
            }

LABEL_45:
            if ((-[CPLMasterChange isFullRecord](selfCopy, "isFullRecord") & 1) == 0 && ![attachedDiffTracker areObjectsDifferentOnProperty:@"importDate" changeType:2])
            {
              goto LABEL_64;
            }

            v43 = 0;
LABEL_60:
            if ([(CPLMasterChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"importDate")])
            {
              importDate = [(CPLMasterChange *)selfCopy importDate];
              [builderCopy setObject:importDate forKey:@"importDate"];

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
            if ((-[CPLMasterChange isFullRecord](selfCopy, "isFullRecord") & 1) == 0 && ![attachedDiffTracker areObjectsDifferentOnProperty:@"importGroupIdentifier" changeType:2])
            {
              goto LABEL_71;
            }

            v57 = 0;
LABEL_67:
            if ([(CPLMasterChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"importGroupIdentifier")])
            {
              importGroupIdentifier = [(CPLMasterChange *)selfCopy importGroupIdentifier];
              [builderCopy setObject:importGroupIdentifier forKey:@"importGroupId"];

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
            if ((-[CPLMasterChange isFullRecord](selfCopy, "isFullRecord") & 1) == 0 && ![attachedDiffTracker areObjectsDifferentOnProperty:@"mediaMetaDataType" changeType:2])
            {
              goto LABEL_78;
            }

            v59 = 0;
LABEL_74:
            if ([(CPLMasterChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"mediaMetaDataType")])
            {
              mediaMetaDataType = [(CPLMasterChange *)selfCopy mediaMetaDataType];
              [builderCopy setObject:mediaMetaDataType forKey:@"mediaMetaDataType"];

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
            if ((-[CPLMasterChange isFullRecord](selfCopy, "isFullRecord") & 1) == 0 && ![attachedDiffTracker areObjectsDifferentOnProperty:@"mediaMetaData" changeType:2])
            {
              goto LABEL_85;
            }

            v61 = 0;
LABEL_81:
            if ([(CPLMasterChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"mediaMetaData")])
            {
              mediaMetaData = [(CPLMasterChange *)selfCopy mediaMetaData];
              [builderCopy setLegacyEncryptedObject:mediaMetaData forKey:@"mediaMetaDataEnc"];

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
            if ((-[CPLMasterChange isFullRecord](selfCopy, "isFullRecord") & 1) == 0 && ![attachedDiffTracker areObjectsDifferentOnProperty:@"originalOrientation" changeType:2])
            {
              goto LABEL_92;
            }

            v63 = 0;
LABEL_88:
            if ([(CPLMasterChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"originalOrientation")])
            {
              v64 = [NSNumber numberWithInteger:[(CPLMasterChange *)selfCopy originalOrientation]];
              [builderCopy setObject:v64 forKey:@"originalOrientation"];

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
            if ((-[CPLMasterChange isFullRecord](selfCopy, "isFullRecord") & 1) == 0 && ![attachedDiffTracker areObjectsDifferentOnProperty:@"fullSizeJPEGSource" changeType:2])
            {
              goto LABEL_99;
            }

            v65 = 0;
LABEL_95:
            if ([(CPLMasterChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"fullSizeJPEGSource")])
            {
              v66 = [NSNumber numberWithUnsignedInteger:[(CPLMasterChange *)selfCopy fullSizeJPEGSource]];
              [builderCopy setObject:v66 forKey:@"fullSizeJPEGSource"];

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
            if ((-[CPLMasterChange isFullRecord](selfCopy, "isFullRecord") & 1) == 0 && ![attachedDiffTracker areObjectsDifferentOnProperty:@"originatingFingerprint" changeType:2])
            {
              goto LABEL_107;
            }

            v67 = 0;
LABEL_102:
            if (![(CPLMasterChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"originatingFingerprint")])
            {
              if (v67)
              {
LABEL_114:
                v72 = 1;
                goto LABEL_115;
              }

LABEL_107:
              if ((-[CPLMasterChange isFullRecord](selfCopy, "isFullRecord") & 1) == 0 && ![attachedDiffTracker areObjectsDifferentOnProperty:@"importedBy" changeType:2])
              {
                goto LABEL_119;
              }

              v72 = 0;
LABEL_115:
              if ([(CPLMasterChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"importedBy")])
              {
                v75 = [NSNumber numberWithShort:[(CPLMasterChange *)selfCopy importedBy]];
                [builderCopy setObject:v75 forKey:@"importedBy"];

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
              if ((-[CPLMasterChange isFullRecord](selfCopy, "isFullRecord") & 1) == 0 && ![attachedDiffTracker areObjectsDifferentOnProperty:@"importedByBundleIdentifier" changeType:2])
              {
                goto LABEL_126;
              }

              v76 = 0;
LABEL_122:
              if ([(CPLMasterChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"importedByBundleIdentifier")])
              {
                importedByBundleIdentifier = [(CPLMasterChange *)selfCopy importedByBundleIdentifier];
                [builderCopy setLegacyEncryptedObject:importedByBundleIdentifier forKey:@"importedByBundleIdentifierEnc"];

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
              if ((-[CPLMasterChange isFullRecord](selfCopy, "isFullRecord") & 1) == 0 && ![attachedDiffTracker areObjectsDifferentOnProperty:@"importedByDisplayName" changeType:2])
              {
                goto LABEL_133;
              }

              v78 = 0;
LABEL_129:
              if ([(CPLMasterChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"importedByDisplayName")])
              {
                importedByDisplayName = [(CPLMasterChange *)selfCopy importedByDisplayName];
                [builderCopy setLegacyEncryptedObject:importedByDisplayName forKey:@"importedByDisplayNameEnc"];

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
              if ((-[CPLMasterChange isFullRecord](selfCopy, "isFullRecord") & 1) == 0 && ![attachedDiffTracker areObjectsDifferentOnProperty:@"videoFrameRate" changeType:2])
              {
                goto LABEL_143;
              }

              v80 = 0;
LABEL_136:
              if (![(CPLMasterChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"videoFrameRate")])
              {
                if (v80)
                {
LABEL_170:
                  v84 = 1;
                  goto LABEL_171;
                }

LABEL_143:
                if ((-[CPLMasterChange isFullRecord](selfCopy, "isFullRecord") & 1) == 0 && ![attachedDiffTracker areObjectsDifferentOnProperty:@"codec" changeType:2])
                {
LABEL_194:
                  if ((-[CPLMasterChange isFullRecord](selfCopy, "isFullRecord") & 1) == 0 && ![attachedDiffTracker areObjectsDifferentOnProperty:@"expungeableResourceStates" changeType:2])
                  {
LABEL_198:

                    goto LABEL_199;
                  }

LABEL_196:
                  if ([(CPLMasterChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"expungeableResourceStates")])
                  {
                    [(CPLMasterChange *)selfCopy addExpungeableResourceStateToCKRecord:builderCopy];
                  }

                  goto LABEL_198;
                }

                v84 = 0;
LABEL_171:
                if (![(CPLMasterChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"codec")])
                {
                  goto LABEL_193;
                }

                codec = [(CPLMasterChange *)selfCopy codec];
                if (codec)
                {
                  if ([(CPLMasterChange *)selfCopy shouldUseEncryptedPropertiesIfPossibleWithContext:fingerprintContext])
                  {
                    v117 = attachedDiffTracker;
                    v114 = fingerprintContext;
                    v99 = codec;
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

                      [builderCopy setObject:v106 forKey:@"codec"];
                      v107 = objc_opt_class();
                      v108 = builderCopy;
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

                      [builderCopy setObject:v112 forKey:@"codec"];
                      v107 = objc_opt_class();
                      v108 = builderCopy;
                      v109 = v110;
                    }

                    [v108 setEncryptedObject:v109 forKey:@"codecEnc" validateClass:v107];
                    fingerprintContext = v114;

                    attachedDiffTracker = v117;
                    goto LABEL_192;
                  }

                  v103 = builderCopy;
                  v104 = codec;
                }

                else
                {
                  v103 = builderCopy;
                  v104 = 0;
                }

                [v103 setObject:v104 forKey:@"codec"];
                [builderCopy setEncryptedObject:0 forKey:@"codecEnc" validateClass:objc_opt_class()];
LABEL_192:

LABEL_193:
                if (v84)
                {
                  goto LABEL_196;
                }

                goto LABEL_194;
              }

              videoFrameRate = [(CPLMasterChange *)selfCopy videoFrameRate];
              v82 = [NSNumber numberWithShort:videoFrameRate];
              if (v82)
              {
                if ([(CPLMasterChange *)selfCopy shouldUseEncryptedPropertiesIfPossibleWithContext:fingerprintContext])
                {
                  v116 = attachedDiffTracker;
                  if (videoFrameRate)
                  {
                    if (videoFrameRate >= 23)
                    {
                      v87 = 9;
                      v88 = &qword_100243E98;
                      while (1)
                      {
                        v83 = *(v88 - 1);
                        if (v83 >= videoFrameRate)
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

                    [builderCopy setObject:v90 forKey:@"videoFrameRate"];
                    v91 = objc_opt_class();
                    v92 = builderCopy;
                    v93 = 0;
                  }

                  else
                  {

                    if (videoFrameRate)
                    {
                      if (videoFrameRate >= 23)
                      {
                        v95 = 9;
                        v96 = &qword_100243E98;
                        while (1)
                        {
                          v94 = *(v96 - 1);
                          if (v94 >= videoFrameRate)
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
                    [builderCopy setObject:v97 forKey:@"videoFrameRate"];

                    v91 = objc_opt_class();
                    v92 = builderCopy;
                    v93 = v90;
                  }

                  [v92 setEncryptedObject:v93 forKey:@"videoFrameRateEnc" validateClass:v91];

                  attachedDiffTracker = v116;
LABEL_169:

                  if (v80)
                  {
                    goto LABEL_170;
                  }

                  goto LABEL_143;
                }

                v85 = builderCopy;
                v86 = v82;
              }

              else
              {
                v85 = builderCopy;
                v86 = 0;
              }

              [v85 setObject:v86 forKey:@"videoFrameRate"];
              [builderCopy setEncryptedObject:0 forKey:@"videoFrameRateEnc" validateClass:objc_opt_class()];
              goto LABEL_169;
            }

            originatingFingerprint = [(CPLMasterChange *)selfCopy originatingFingerprint];
            if (originatingFingerprint)
            {
              if ([(CPLMasterChange *)selfCopy shouldUseEncryptedPropertiesIfPossibleWithContext:fingerprintContext])
              {
                [builderCopy setObject:0 forKey:@"originatingFingerprint"];
                v69 = objc_opt_class();
                v70 = builderCopy;
                v71 = originatingFingerprint;
                goto LABEL_113;
              }

              v73 = builderCopy;
              v74 = originatingFingerprint;
            }

            else
            {
              v73 = builderCopy;
              v74 = 0;
            }

            [v73 setObject:v74 forKey:@"originatingFingerprint"];
            v69 = objc_opt_class();
            v70 = builderCopy;
            v71 = 0;
LABEL_113:
            [v70 setEncryptedObject:v71 forKey:@"originatingFingerprintEnc" validateClass:v69];

            if (v67)
            {
              goto LABEL_114;
            }

            goto LABEL_107;
          }

          creationDate = [(CPLMasterChange *)selfCopy creationDate];
          if (creationDate)
          {
            if ([(CPLMasterChange *)selfCopy shouldUseEncryptedPropertiesIfPossibleWithContext:fingerprintContext])
            {
              v115 = attachedDiffTracker;
              v28 = creationDate;
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

                [builderCopy setObject:v39 forKey:@"originalCreationDate"];
                v40 = objc_opt_class();
                v41 = builderCopy;
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

                [builderCopy setObject:v55 forKey:@"originalCreationDate"];
                v40 = objc_opt_class();
                v41 = builderCopy;
                v42 = v46;
              }

              [v41 setEncryptedObject:v42 forKey:@"originalCreationDateEnc" validateClass:v40];
              attachedDiffTracker = v115;

LABEL_58:
              if (v26)
              {
                goto LABEL_59;
              }

              goto LABEL_45;
            }

            v44 = builderCopy;
            v45 = creationDate;
          }

          else
          {
            v44 = builderCopy;
            v45 = 0;
          }

          [v44 setObject:v45 forKey:@"originalCreationDate"];
          [builderCopy setEncryptedObject:0 forKey:@"originalCreationDateEnc" validateClass:objc_opt_class()];
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