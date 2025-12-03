@interface CUKeychainItem
- (BOOL)_updateWithAttributesDictionary:(id)dictionary flags:(unsigned int)flags error:(id *)error;
- (BOOL)isEqualToKeychainItem:(id)item flags:(unsigned int)flags;
- (id)_attributesDictionaryWithFlags:(unsigned int)flags error:(id *)error;
- (id)descriptionWithLevel:(int)level;
- (void)_mergeItem:(id)item;
@end

@implementation CUKeychainItem

- (BOOL)_updateWithAttributesDictionary:(id)dictionary flags:(unsigned int)flags error:(id *)error
{
  flagsCopy = flags;
  v99[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v9 = *MEMORY[0x1E697ABD0];
  TypeID = CFStringGetTypeID();
  v11 = CFDictionaryGetTypedValue(dictionaryCopy, v9, TypeID, 0);
  if (v11)
  {
    objc_storeStrong(&self->_accessGroup, v11);
  }

  v12 = *MEMORY[0x1E697ABD8];
  v13 = CFStringGetTypeID();
  v14 = CFDictionaryGetTypedValue(dictionaryCopy, v12, v13, 0);
  v15 = v14;
  if (v14)
  {
    if ([v14 isEqual:*MEMORY[0x1E697AC20]])
    {
      v16 = 1;
    }

    else if ([v15 isEqual:*MEMORY[0x1E697ABE0]])
    {
      v16 = 2;
    }

    else if ([v15 isEqual:*MEMORY[0x1E697ABF8]])
    {
      v16 = 3;
    }

    else if ([v15 isEqual:*MEMORY[0x1E697AC18]])
    {
      v16 = 4;
    }

    else if ([v15 isEqual:*MEMORY[0x1E697AC28]])
    {
      v16 = 5;
    }

    else if ([v15 isEqual:*MEMORY[0x1E697ABE8]])
    {
      v16 = 6;
    }

    else
    {
      if (([v15 isEqual:*MEMORY[0x1E697AC08]] & 1) == 0)
      {
        if (error)
        {
          *error = NSErrorWithOSStatusF(4294960561, "Unsupported kSecAttrAccessible (%@)", v17, v18, v19, v20, v21, v22, v15);
        }

        goto LABEL_69;
      }

      v16 = 7;
    }

    self->_accessibleType = v16;
  }

  v23 = *MEMORY[0x1E697ACD0];
  v24 = CFDateGetTypeID();
  v25 = CFDictionaryGetTypedValue(dictionaryCopy, v23, v24, 0);
  if (v25)
  {
    objc_storeStrong(&self->_dateCreated, v25);
  }

  v26 = *MEMORY[0x1E697ADD0];
  v27 = CFDateGetTypeID();
  v28 = CFDictionaryGetTypedValue(dictionaryCopy, v26, v27, 0);
  if (v28)
  {
    objc_storeStrong(&self->_dateModified, v28);
  }

  v29 = *MEMORY[0x1E697AC30];
  v30 = CFStringGetTypeID();
  v31 = CFDictionaryGetTypedValue(dictionaryCopy, v29, v30, 0);
  if (v31)
  {
    objc_storeStrong(&self->_identifier, v31);
  }

  self->_invisible = CFDictionaryGetInt64(dictionaryCopy, *MEMORY[0x1E697AD00], 0) != 0;
  v32 = *MEMORY[0x1E697ACF0];
  v33 = CFDataGetTypeID();
  v34 = CFDictionaryGetTypedValue(dictionaryCopy, v32, v33, 0);
  v15 = v34;
  if (v34 && [v34 length])
  {
    v89 = 0;
    v41 = OPACKDecodeData(v15, 8u, &v89);
    if (!v41)
    {
      if ((flagsCopy & 4) == 0)
      {
        if (error)
        {
          if (v89)
          {
            v42 = v89;
          }

          else
          {
            v42 = 4294960534;
          }

          v43 = "Decode metadata failed";
LABEL_54:
          NSErrorWithOSStatusF(v42, v43, v35, v36, v37, v38, v39, v40, v88);
          *error = v41 = 0;
          goto LABEL_68;
        }

        goto LABEL_59;
      }

      v98 = @"_legacyData";
      v99[0] = v15;
      v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v99 forKeys:&v98 count:1];
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if ((flagsCopy & 4) == 0)
      {
        if (!error)
        {
LABEL_68:

LABEL_69:
          v75 = 0;
          goto LABEL_79;
        }

        v44 = objc_opt_class();
        v45 = NSStringFromClass(v44);
        NSErrorWithOSStatusF(4294960540, "Decoded metadata non-dictionary (%@)", v46, v47, v48, v49, v50, v51, v45);
        *error = LABEL_67:;

        goto LABEL_68;
      }

      v96 = @"_legacyData";
      v97 = v15;
      v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v97 forKeys:&v96 count:1];

      v41 = v52;
    }

    metadata = self->_metadata;
    self->_metadata = v41;
  }

  v54 = *MEMORY[0x1E697ADC8];
  v55 = CFStringGetTypeID();
  v56 = CFDictionaryGetTypedValue(dictionaryCopy, v54, v55, 0);
  if (v56)
  {
    objc_storeStrong(&self->_name, v56);
  }

  v57 = *MEMORY[0x1E697B3C8];
  v58 = CFDataGetTypeID();
  v59 = CFDictionaryGetTypedValue(dictionaryCopy, v57, v58, 0);
  if (v59)
  {
    objc_storeStrong(&self->_persistentRef, v59);
  }

  v60 = *MEMORY[0x1E697B3C0];
  v61 = CFDataGetTypeID();
  v62 = CFDictionaryGetTypedValue(dictionaryCopy, v60, v61, 0);
  v15 = v62;
  if (v62 && [v62 length])
  {
    v89 = 0;
    v41 = OPACKDecodeData(v15, 8u, &v89);
    if (v41)
    {
LABEL_63:
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if ((flagsCopy & 4) == 0)
        {
          if (!error)
          {
            goto LABEL_68;
          }

          v68 = objc_opt_class();
          v45 = NSStringFromClass(v68);
          NSErrorWithOSStatusF(4294960540, "Decoded secrets non-dictionary (%@)", v69, v70, v71, v72, v73, v74, v45);
          goto LABEL_67;
        }

        v90 = @"_legacyData";
        v91 = v15;
        v76 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v91 forKeys:&v90 count:1];

        v41 = v76;
      }

      secrets = self->_secrets;
      self->_secrets = v41;

      goto LABEL_72;
    }

    if ((flagsCopy & 4) == 0)
    {
      if (error)
      {
        if (v89)
        {
          v42 = v89;
        }

        else
        {
          v42 = 4294960534;
        }

        v43 = "Decode secrets failed";
        goto LABEL_54;
      }

LABEL_59:
      v41 = 0;
      goto LABEL_68;
    }

    v63 = [MEMORY[0x1E696AE40] propertyListWithData:v15 options:0 format:0 error:0];
    if (v63 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      if ((flagsCopy & 0x10) != 0)
      {
        v67 = v63;
        goto LABEL_62;
      }

      v94 = @"_legacyPlist";
      v95 = v63;
      v64 = MEMORY[0x1E695DF20];
      v65 = &v95;
      v66 = &v94;
    }

    else
    {
      v92 = @"_legacyData";
      v93 = v15;
      v64 = MEMORY[0x1E695DF20];
      v65 = &v93;
      v66 = &v92;
    }

    v67 = [v64 dictionaryWithObjects:v65 forKeys:v66 count:1];
LABEL_62:
    v41 = v67;

    goto LABEL_63;
  }

LABEL_72:

  v78 = *MEMORY[0x1E697AE88];
  v79 = CFStringGetTypeID();
  v80 = CFDictionaryGetTypedValue(dictionaryCopy, v78, v79, 0);
  if (v80)
  {
    objc_storeStrong(&self->_type, v80);
  }

  v81 = *MEMORY[0x1E697ACE0];
  v82 = CFStringGetTypeID();
  v83 = CFDictionaryGetTypedValue(dictionaryCopy, v81, v82, 0);
  if (v83)
  {
    objc_storeStrong(&self->_userDescription, v83);
  }

  v84 = *MEMORY[0x1E697AEA8];
  v85 = CFStringGetTypeID();
  v86 = CFDictionaryGetTypedValue(dictionaryCopy, v84, v85, 0);
  if (v86)
  {
    objc_storeStrong(&self->_viewHint, v86);
  }

  v75 = 1;
LABEL_79:

  return v75;
}

- (void)_mergeItem:(id)item
{
  v41 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  accessGroup = [itemCopy accessGroup];
  if (accessGroup)
  {
    objc_storeStrong(&self->_accessGroup, accessGroup);
  }

  accessibleType = [itemCopy accessibleType];
  if (accessibleType)
  {
    self->_accessibleType = accessibleType;
  }

  identifier = [itemCopy identifier];
  if (identifier)
  {
    objc_storeStrong(&self->_identifier, identifier);
  }

  self->_invisible = [itemCopy invisible];
  metadata = [itemCopy metadata];
  if (metadata)
  {
    v9 = [(NSDictionary *)self->_metadata mutableCopy];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    v12 = v11;

    [v12 addEntriesFromDictionary:metadata];
    v13 = [v12 copy];
    metadata = self->_metadata;
    self->_metadata = v13;
  }

  removedMetadata = [itemCopy removedMetadata];
  if (removedMetadata)
  {
    v16 = [(NSDictionary *)self->_metadata mutableCopy];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v17 = removedMetadata;
    v18 = [v17 countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v37;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v37 != v20)
          {
            objc_enumerationMutation(v17);
          }

          [v16 setObject:0 forKeyedSubscript:{*(*(&v36 + 1) + 8 * i), v36}];
        }

        v19 = [v17 countByEnumeratingWithState:&v36 objects:v40 count:16];
      }

      while (v19);
    }

    v22 = [v16 copy];
    v23 = self->_metadata;
    self->_metadata = v22;
  }

  name = [itemCopy name];
  if (name)
  {
    objc_storeStrong(&self->_name, name);
  }

  secrets = [itemCopy secrets];
  if (secrets)
  {
    v26 = [(NSDictionary *)self->_secrets mutableCopy];
    v27 = v26;
    if (v26)
    {
      v28 = v26;
    }

    else
    {
      v28 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    v29 = v28;

    [v29 addEntriesFromDictionary:secrets];
    v30 = [v29 copy];
    secrets = self->_secrets;
    self->_secrets = v30;
  }

  syncType = [itemCopy syncType];
  if (syncType)
  {
    self->_syncType = syncType;
  }

  type = [itemCopy type];
  if (type)
  {
    objc_storeStrong(&self->_type, type);
  }

  userDescription = [itemCopy userDescription];
  if (userDescription)
  {
    objc_storeStrong(&self->_userDescription, userDescription);
  }

  viewHint = [itemCopy viewHint];
  if (viewHint)
  {
    objc_storeStrong(&self->_viewHint, viewHint);
  }
}

- (id)_attributesDictionaryWithFlags:(unsigned int)flags error:(id *)error
{
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v14 = v7;
  if ((flags & 0x80000) == 0)
  {
    accessGroup = self->_accessGroup;
    if (accessGroup)
    {
      [v7 setObject:accessGroup forKeyedSubscript:*MEMORY[0x1E697ABD0]];
    }
  }

  accessibleType = self->_accessibleType;
  if (accessibleType > 3)
  {
    if (accessibleType <= 5)
    {
      if (accessibleType == 4)
      {
        v16 = MEMORY[0x1E697AC18];
      }

      else
      {
        v16 = MEMORY[0x1E697AC28];
      }

      goto LABEL_20;
    }

    if (accessibleType == 6)
    {
      v16 = MEMORY[0x1E697ABE8];
      goto LABEL_20;
    }

    if (accessibleType == 7)
    {
      v16 = MEMORY[0x1E697AC08];
      goto LABEL_20;
    }
  }

  else
  {
    if (accessibleType > 1)
    {
      if (accessibleType == 2)
      {
        v16 = MEMORY[0x1E697ABE0];
      }

      else
      {
        v16 = MEMORY[0x1E697ABF8];
      }

      goto LABEL_20;
    }

    if (!accessibleType)
    {
      goto LABEL_21;
    }

    if (accessibleType == 1)
    {
      v16 = MEMORY[0x1E697AC20];
LABEL_20:
      [v14 setObject:*v16 forKeyedSubscript:*MEMORY[0x1E697ABD8]];
LABEL_21:
      if ((flags & 0x80000) == 0)
      {
        [v14 setObject:*MEMORY[0x1E697B008] forKeyedSubscript:*MEMORY[0x1E697AFF8]];
      }

      identifier = self->_identifier;
      if (identifier)
      {
        [v14 setObject:identifier forKeyedSubscript:*MEMORY[0x1E697AC30]];
      }

      if (self->_invisible)
      {
        [v14 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E697AD00]];
      }

      v18 = self->_metadata;
      v19 = v18;
      if (v18)
      {
        v57 = 0;
        DataMutable = OPACKEncoderCreateDataMutable(v18, 8u, &v57);
        if (!DataMutable)
        {
          if (error)
          {
            if (v57)
            {
              v48 = v57;
            }

            else
            {
              v48 = 4294960596;
            }

            *error = NSErrorWithOSStatusF(v48, "Encode metadata failed", v21, v22, v23, v24, v25, v26, v55);
          }

          v49 = 0;
          goto LABEL_79;
        }

        v27 = DataMutable;
        [v14 setObject:DataMutable forKeyedSubscript:*MEMORY[0x1E697ACF0]];
      }

      name = self->_name;
      if (name)
      {
        [v14 setObject:name forKeyedSubscript:*MEMORY[0x1E697ADC8]];
      }

      persistentRef = self->_persistentRef;
      if (persistentRef)
      {
        [v14 setObject:persistentRef forKeyedSubscript:*MEMORY[0x1E697B3C8]];
      }

      v30 = self->_secrets;
      v37 = v30;
      if (v30)
      {
        v56 = 0;
        v38 = OPACKEncoderCreateDataMutable(v30, 8u, &v56);
        if (!v38)
        {
          if (error)
          {
            if (v56)
            {
              v50 = v56;
            }

            else
            {
              v50 = 4294960596;
            }

            *error = NSErrorWithOSStatusF(v50, "Encode secrets failed", v39, v40, v41, v42, v43, v44, v55);
          }

          goto LABEL_53;
        }

        v45 = v38;
        [v14 setObject:v38 forKeyedSubscript:*MEMORY[0x1E697B3C0]];
      }

      if ((flags & 0x80000) != 0)
      {
        goto LABEL_63;
      }

      syncType = self->_syncType;
      if (syncType > 1)
      {
        if (syncType == 3)
        {
          v47 = MEMORY[0x1E697AEB8];
          goto LABEL_62;
        }

        if (syncType == 2)
        {
          v47 = MEMORY[0x1E695E4D0];
          goto LABEL_62;
        }
      }

      else
      {
        if (!syncType)
        {
          goto LABEL_63;
        }

        if (syncType == 1)
        {
          v47 = MEMORY[0x1E695E4C0];
LABEL_62:
          [v14 setObject:*v47 forKeyedSubscript:*MEMORY[0x1E697AEB0]];
LABEL_63:
          if ((flags & 0x20) != 0)
          {
            [v14 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E697B3A8]];
          }

          type = self->_type;
          if (type)
          {
            [v14 setObject:type forKeyedSubscript:*MEMORY[0x1E697AE88]];
          }

          userDescription = self->_userDescription;
          if (userDescription)
          {
            [v14 setObject:userDescription forKeyedSubscript:*MEMORY[0x1E697ACE0]];
          }

          if ((flags & 0x80000) == 0)
          {
            viewHint = self->_viewHint;
            if (viewHint)
            {
              [v14 setObject:viewHint forKeyedSubscript:*MEMORY[0x1E697AEA8]];
            }
          }

          if ((flags & 0x40000) != 0)
          {
            [v14 setObject:*MEMORY[0x1E697B268] forKeyedSubscript:*MEMORY[0x1E697B260]];
            if ((flags & 8) == 0)
            {
LABEL_74:
              if ((flags & 0x10000) == 0)
              {
                goto LABEL_75;
              }

              goto LABEL_85;
            }
          }

          else if ((flags & 8) == 0)
          {
            goto LABEL_74;
          }

          [v14 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E697B320]];
          if ((flags & 0x10000) == 0)
          {
LABEL_75:
            if ((flags & 0x20000) == 0)
            {
LABEL_77:
              v49 = v14;
              goto LABEL_78;
            }

LABEL_76:
            [v14 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E697B318]];
            goto LABEL_77;
          }

LABEL_85:
          [v14 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E697B310]];
          if ((flags & 0x20000) == 0)
          {
            goto LABEL_77;
          }

          goto LABEL_76;
        }
      }

      if (error)
      {
        NSErrorWithOSStatusF(4294960591, "Unknown SyncType (%d)", v31, v32, v33, v34, v35, v36, self->_syncType);
        *error = v49 = 0;
        goto LABEL_78;
      }

LABEL_53:
      v49 = 0;
LABEL_78:

LABEL_79:
      goto LABEL_80;
    }
  }

  if (error)
  {
    NSErrorWithOSStatusF(4294960591, "Unknown AccessibleType (%d)", accessGroup, v9, v10, v11, v12, v13, self->_accessibleType);
    *error = v49 = 0;
  }

  else
  {
    v49 = 0;
  }

LABEL_80:

  return v49;
}

- (BOOL)isEqualToKeychainItem:(id)item flags:(unsigned int)flags
{
  flagsCopy = flags;
  itemCopy = item;
  identifier = self->_identifier;
  identifier = [itemCopy identifier];
  v9 = identifier;
  v10 = identifier;
  v11 = v10;
  if (v9 == v10)
  {
  }

  else
  {
    if ((v9 != 0) == (v10 == 0))
    {
      goto LABEL_32;
    }

    v12 = [(NSDictionary *)v9 isEqual:v10];

    if (!v12)
    {
      goto LABEL_25;
    }
  }

  invisible = self->_invisible;
  if (invisible == [itemCopy invisible])
  {
    type = self->_type;
    type = [itemCopy type];
    v9 = type;
    v16 = type;
    v11 = v16;
    if (v9 == v16)
    {
    }

    else
    {
      if ((v9 != 0) == (v16 == 0))
      {
        goto LABEL_32;
      }

      v17 = [(NSDictionary *)v9 isEqual:v16];

      if (!v17)
      {
        goto LABEL_25;
      }
    }

    name = self->_name;
    name = [itemCopy name];
    v9 = name;
    v20 = name;
    v11 = v20;
    if (v9 == v20)
    {
    }

    else
    {
      if ((v9 != 0) == (v20 == 0))
      {
        goto LABEL_32;
      }

      v21 = [(NSDictionary *)v9 isEqual:v20];

      if (!v21)
      {
        goto LABEL_25;
      }
    }

    metadata = self->_metadata;
    metadata = [itemCopy metadata];
    v9 = metadata;
    v24 = metadata;
    v11 = v24;
    if (v9 == v24)
    {
    }

    else
    {
      if ((v9 != 0) == (v24 == 0))
      {
        goto LABEL_32;
      }

      v25 = [(NSDictionary *)v9 isEqual:v24];

      if (!v25)
      {
        goto LABEL_25;
      }
    }

    userDescription = self->_userDescription;
    userDescription = [itemCopy userDescription];
    v9 = userDescription;
    v28 = userDescription;
    v11 = v28;
    if (v9 == v28)
    {
    }

    else
    {
      if ((v9 != 0) == (v28 == 0))
      {
        goto LABEL_32;
      }

      v29 = [(NSDictionary *)v9 isEqual:v28];

      if (!v29)
      {
        goto LABEL_25;
      }
    }

    if ((flagsCopy & 1) == 0)
    {
      v30 = 1;
      goto LABEL_34;
    }

    secrets = self->_secrets;
    secrets = [itemCopy secrets];
    v9 = secrets;
    v33 = secrets;
    v11 = v33;
    if (v9 == v33)
    {
      v30 = 1;
      goto LABEL_33;
    }

    if ((v9 != 0) != (v33 == 0))
    {
      v30 = [(NSDictionary *)v9 isEqual:v33];
LABEL_33:

      goto LABEL_34;
    }

LABEL_32:
    v30 = 0;
    goto LABEL_33;
  }

LABEL_25:
  v30 = 0;
LABEL_34:

  return v30 & 1;
}

- (id)descriptionWithLevel:(int)level
{
  if ((level & 0x8000000) != 0)
  {
    v10 = 0;
    if ((level & 0x800000) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v150 = 0;
    NSAppendPrintF(&v150, "CUKeychainItem ", *&level, v3, v4, v5, v6, v7, v128);
    v10 = v150;
    if ((level & 0x800000) != 0)
    {
LABEL_3:
      v149 = v10;
      v11 = &v149;
      NSAppendPrintF(&v149, "ID '%@'", *&level, v3, v4, v5, v6, v7, self->_identifier);
      goto LABEL_6;
    }
  }

  v148 = v10;
  v11 = &v148;
  NSAppendPrintF(&v148, "ID '%{mask}'", *&level, v3, v4, v5, v6, v7, self->_identifier);
LABEL_6:
  v12 = *v11;

  type = self->_type;
  if (type)
  {
    v147 = v12;
    v14 = type;
    NSAppendPrintF(&v147, ", Type '%@'", v15, v16, v17, v18, v19, v20, v14);
    v21 = v147;

    v12 = v21;
  }

  v22 = self->_name;
  v29 = v22;
  if (v22)
  {
    if ((level & 0x800000) != 0)
    {
      v146 = v12;
      v30 = &v146;
      NSAppendPrintF(&v146, ", Name '%@'", v23, v24, v25, v26, v27, v28, v22);
    }

    else
    {
      v145 = v12;
      v30 = &v145;
      NSAppendPrintF(&v145, ", Name '%{mask}'", v23, v24, v25, v26, v27, v28, v22);
    }

    v31 = *v30;

    v12 = v31;
  }

  levelCopy = level;
  if (level < 0x1Fu)
  {
    dateCreated = self->_dateCreated;
    if (dateCreated)
    {
      v144 = v12;
      v40 = dateCreated;
      NSAppendPrintF(&v144, ", Created %@", v41, v42, v43, v44, v45, v46, v40);
      v47 = v144;

      v12 = v47;
    }

    dateModified = self->_dateModified;
    if (dateModified)
    {
      v143 = v12;
      v49 = dateModified;
      NSAppendPrintF(&v143, ", Modified %@", v50, v51, v52, v53, v54, v55, v49);
      v56 = v143;

      v57 = 100;
      v12 = v56;
    }

    else
    {
      v57 = 100;
    }

    goto LABEL_27;
  }

  if (level < 0x29u)
  {
    v57 = 16;
LABEL_27:
    metadata = self->_metadata;
    if (metadata)
    {
      v142 = v12;
      v132 = metadata;
      NSAppendPrintF(&v142, ", Metadata %##.*@", v88, v89, v90, v91, v92, v93, v57);
      v94 = v142;

      v12 = v94;
    }

    persistentRef = self->_persistentRef;
    if (persistentRef)
    {
      v141 = v12;
      v133 = persistentRef;
      NSAppendPrintF(&v141, ", PersistentRef <%.*@>", v96, v97, v98, v99, v100, v101, v57);
      v102 = v141;

      v12 = v102;
    }

    v103 = self->_secrets;
    v79 = v103;
    if (!v103)
    {
      goto LABEL_36;
    }

    if ((level & 0x800000) != 0)
    {
      v140 = v12;
      v80 = &v140;
      NSAppendPrintF(&v140, ", Secrets %##.*@", v104, v105, v106, v107, v108, v109, v57);
    }

    else
    {
      v139 = v12;
      v131 = [(NSDictionary *)v103 count];
      v80 = &v139;
      NSAppendPrintF(&v139, ", Secrets (%d)", v110, v111, v112, v113, v114, v115, v131);
    }

LABEL_35:
    v116 = *v80;

    v12 = v116;
LABEL_36:

    goto LABEL_37;
  }

  v58 = self->_metadata;
  if (v58)
  {
    v138 = v12;
    v59 = v58;
    v60 = [(NSDictionary *)v59 count];
    NSAppendPrintF(&v138, ", Metadata (%d)", v61, v62, v63, v64, v65, v66, v60);
    v67 = v138;

    v12 = v67;
  }

  v68 = self->_persistentRef;
  if (v68)
  {
    v137 = v12;
    v69 = v68;
    v70 = [(NSData *)v69 length];
    NSAppendPrintF(&v137, ", PersistentRef %d bytes", v71, v72, v73, v74, v75, v76, v70);
    v77 = v137;

    v12 = v77;
  }

  secrets = self->_secrets;
  if (secrets)
  {
    v136 = v12;
    v79 = secrets;
    v130 = [(NSDictionary *)v79 count];
    v80 = &v136;
    NSAppendPrintF(&v136, ", Secrets (%d)", v81, v82, v83, v84, v85, v86, v130);
    goto LABEL_35;
  }

LABEL_37:
  viewHint = self->_viewHint;
  if (viewHint)
  {
    v135 = v12;
    v118 = viewHint;
    NSAppendPrintF(&v135, ", View '%@'", v119, v120, v121, v122, v123, v124, v118);
    v125 = v135;

    v12 = v125;
  }

  if (levelCopy < 0x15)
  {
    v134 = v12;
    NSAppendPrintF(&v134, "\n", v32, v33, v34, v35, v36, v37, v129);
    v126 = v134;

    v12 = v126;
  }

  return v12;
}

@end