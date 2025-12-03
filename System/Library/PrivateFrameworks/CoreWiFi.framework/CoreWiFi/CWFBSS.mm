@interface CWFBSS
+ (id)supportedOSSpecificKeys;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToBSS:(id)s;
- (BOOL)wasJoinedRecentlyInProximityOf:(id)of;
- (CLLocation)location;
- (CWFBSS)init;
- (CWFBSS)initWithCoder:(id)coder;
- (CWFBSS)initWithExternalForm:(id)form;
- (NSSet)properties;
- (NSString)debugDescription;
- (NSString)description;
- (id)JSONCompatibleKeyValueMap;
- (id)OSSpecificValueForKey:(id)key;
- (id)__classDStorageProperties;
- (id)__defaultProperties;
- (id)__filteredBSSWithProperties:(id)properties OSSpecificKeys:(id)keys;
- (id)__infoForLocation:(id)location;
- (id)__keyForProperty:(int64_t)property;
- (id)__locationFromInfo:(id)info;
- (id)coreWiFiSpecificAttributes;
- (id)deepCopy;
- (id)externalForm;
- (id)filteredBSSForClassDStorage;
- (int64_t)__propertyForKey:(id)key;
- (unint64_t)hash;
- (void)mergeWithBSS:(id)s;
- (void)setCoreWiFiSpecificAttributes:(id)attributes;
- (void)setLocation:(id)location;
- (void)setOSSpecificAttributes:(id)attributes;
- (void)setOSSpecificValue:(id)value forKey:(id)key;
@end

@implementation CWFBSS

- (CWFBSS)init
{
  v6.receiver = self;
  v6.super_class = CWFBSS;
  v2 = [(CWFBSS *)&v6 init];
  if (!v2 || (v3 = objc_alloc_init(MEMORY[0x1E695DF90]), internal = v2->_internal, v2->_internal = v3, internal, !v2->_internal))
  {

    return 0;
  }

  return v2;
}

+ (id)supportedOSSpecificKeys
{
  if (qword_1ED7E3998 != -1)
  {
    dispatch_once(&qword_1ED7E3998, &unk_1F5B89B70);
  }

  v3 = qword_1ED7E3990;

  return v3;
}

- (NSSet)properties
{
  v2 = MEMORY[0x1E695DFD8];
  allKeys = [(NSMutableDictionary *)self->_internal allKeys];
  v4 = [v2 setWithArray:allKeys];

  return v4;
}

- (unint64_t)hash
{
  bSSID = [(CWFBSS *)self BSSID];
  v4 = [bSSID hash];
  internal = [(CWFBSS *)self internal];
  v6 = [internal hash];

  return v6 ^ v4;
}

- (NSString)description
{
  string = [MEMORY[0x1E696AD60] string];
  bSSID = [(CWFBSS *)self BSSID];
  redactedForWiFi = [bSSID redactedForWiFi];
  [string appendFormat:@"bssid=%@, ", redactedForWiFi];

  channel = [(CWFBSS *)self channel];
  [string appendFormat:@"channel=%@", channel];

  channel2 = [(CWFBSS *)self channel];
  if (([channel2 is6GHz] & 1) == 0)
  {

    goto LABEL_5;
  }

  colocated2GHzRNRChannel = [(CWFBSS *)self colocated2GHzRNRChannel];
  if (!colocated2GHzRNRChannel)
  {
    colocated5GHzRNRChannel = [(CWFBSS *)self colocated5GHzRNRChannel];

    if (colocated5GHzRNRChannel)
    {
      goto LABEL_7;
    }

LABEL_5:
    v9 = @", ";
    goto LABEL_14;
  }

LABEL_7:
  objc_msgSend(string, "appendString:", @" (");
  colocated2GHzRNRChannel2 = [(CWFBSS *)self colocated2GHzRNRChannel];

  if (colocated2GHzRNRChannel2)
  {
    colocated2GHzRNRChannel3 = [(CWFBSS *)self colocated2GHzRNRChannel];
    [string appendFormat:@"%@, ", colocated2GHzRNRChannel3];
  }

  colocated5GHzRNRChannel2 = [(CWFBSS *)self colocated5GHzRNRChannel];

  if (colocated5GHzRNRChannel2)
  {
    colocated5GHzRNRChannel3 = [(CWFBSS *)self colocated5GHzRNRChannel];
    [string appendFormat:@"%@, ", colocated5GHzRNRChannel3];
  }

  if ([string hasSuffix:{@", "}])
  {
    [string deleteCharactersInRange:{objc_msgSend(string, "length") - 2, 2}];
  }

  v9 = @", ");
LABEL_14:
  [string appendString:v9];
  lastAssociatedAt = [(CWFBSS *)self lastAssociatedAt];

  if (lastAssociatedAt)
  {
    lastAssociatedAt2 = [(CWFBSS *)self lastAssociatedAt];
    v17 = sub_1E0BCC248(lastAssociatedAt2);
    [string appendFormat:@"assoc=%@, ", v17];
  }

  if ([string hasSuffix:{@", "}])
  {
    [string deleteCharactersInRange:{objc_msgSend(string, "length") - 2, 2}];
  }

  return string;
}

- (id)__keyForProperty:(int64_t)property
{
  v4 = property - 1;
  if (property - 1) <= 0xB && ((0x9FDu >> v4))
  {
    v5 = *off_1E86E73A8[v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (int64_t)__propertyForKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"BSSID"])
  {
    v4 = 1;
  }

  else if ([keyCopy isEqualToString:@"Channel"] & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"ChannelFlags"))
  {
    v4 = 2;
  }

  else if ([keyCopy isEqualToString:@"LastAssociatedAt"])
  {
    v4 = 3;
  }

  else if ([keyCopy isEqualToString:@"Location"] & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"LocationLatitude") & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"LocationLongitude") & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"LocationAccuracy") & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"LocationTimestamp"))
  {
    v4 = 4;
  }

  else if ([keyCopy isEqualToString:@"AWDLRealTimeModeTimestamp"])
  {
    v4 = 5;
  }

  else if ([keyCopy isEqualToString:@"DHCPServerID"])
  {
    v4 = 6;
  }

  else if ([keyCopy isEqualToString:@"DHCPv6ServerID"])
  {
    v4 = 7;
  }

  else if ([keyCopy isEqualToString:@"IPv4NetworkSignature"])
  {
    v4 = 8;
  }

  else if ([keyCopy isEqualToString:@"IPv6NetworkSignature"])
  {
    v4 = 9;
  }

  else if ([keyCopy isEqualToString:@"colocated2GHzRNRChannel"] & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"colocated2GHzRNRChannelFlags"))
  {
    v4 = 10;
  }

  else if ([keyCopy isEqualToString:@"colocated5GHzRNRChannel"] & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"colocated5GHzRNRChannelFlags"))
  {
    v4 = 11;
  }

  else if ([keyCopy isEqualToString:@"__OSSpecific__"])
  {
    v4 = 12;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (CWFBSS)initWithExternalForm:(id)form
{
  v40 = *MEMORY[0x1E69E9840];
  formCopy = form;
  v6 = [(CWFBSS *)self init];
  if (v6)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    obj = [formCopy allKeys];
    v34 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (!v34)
    {
      goto LABEL_37;
    }

    v33 = *v36;
    v31 = @"ChannelFlags";
    while (1)
    {
      v8 = 0;
      do
      {
        if (*v36 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v35 + 1) + 8 * v8);
        v10 = [(CWFBSS *)v6 __propertyForKey:v9, v31];
        if (v10)
        {
          v11 = v10;
          v12 = v3;
          v13 = [MEMORY[0x1E696AD98] numberWithInteger:v10];
          v14 = [dictionary objectForKeyedSubscript:v13];

          if (!v14)
          {
            v3 = v12;
            if (v11 > 9)
            {
              if (v11 == 10)
              {
                v16 = [formCopy objectForKeyedSubscript:@"colocated2GHzRNRChannel"];
                v26 = [formCopy objectForKeyedSubscript:@"colocated2GHzRNRChannelFlags"];
                v20 = v26;
                if (!v16 || !v26)
                {
                  goto LABEL_30;
                }

                v22 = objc_alloc_init(CWFChannel);
                -[CWFChannel setChannel:](v22, "setChannel:", [v16 unsignedIntegerValue]);
                -[CWFChannel setFlags:](v22, "setFlags:", [v20 unsignedIntValue]);
                v23 = MEMORY[0x1E696AD98];
                v24 = 10;
              }

              else
              {
                if (v11 != 11)
                {
                  goto LABEL_22;
                }

                v16 = [formCopy objectForKeyedSubscript:@"colocated5GHzRNRChannel"];
                v21 = [formCopy objectForKeyedSubscript:@"colocated5GHzRNRChannelFlags"];
                v20 = v21;
                if (!v16 || !v21)
                {
LABEL_30:

LABEL_31:
                  goto LABEL_32;
                }

                v22 = objc_alloc_init(CWFChannel);
                -[CWFChannel setChannel:](v22, "setChannel:", [v16 unsignedIntegerValue]);
                -[CWFChannel setFlags:](v22, "setFlags:", [v20 unsignedIntValue]);
                v23 = MEMORY[0x1E696AD98];
                v24 = 11;
              }
            }

            else
            {
              if (v11 != 2)
              {
                if (v11 == 4)
                {
                  v15 = [formCopy objectForKeyedSubscript:@"Location"];
                  v16 = [(CWFBSS *)v6 __locationFromInfo:v15];

                  if (v16 || ([(CWFBSS *)v6 __locationFromInfo:formCopy], (v16 = objc_claimAutoreleasedReturnValue()) != 0))
                  {
                    v12 = [(CWFBSS *)v6 __infoForLocation:v16];
                    v17 = 0;
                    v18 = v12;
                  }

                  else
                  {
                    v18 = 0;
                    v17 = 1;
                  }

                  v19 = [MEMORY[0x1E696AD98] numberWithInteger:4];
                  [dictionary setObject:v18 forKeyedSubscript:v19];

                  v20 = v12;
                  v3 = v12;
                  if (v17)
                  {
                    goto LABEL_31;
                  }

                  goto LABEL_30;
                }

LABEL_22:
                v16 = [formCopy objectForKeyedSubscript:v9];
                v20 = [MEMORY[0x1E696AD98] numberWithInteger:v11];
                [dictionary setObject:v16 forKeyedSubscript:v20];
                goto LABEL_30;
              }

              v16 = [formCopy objectForKeyedSubscript:@"Channel"];
              v25 = [formCopy objectForKeyedSubscript:v31];
              v20 = v25;
              if (!v16 || !v25)
              {
                goto LABEL_30;
              }

              v22 = objc_alloc_init(CWFChannel);
              -[CWFChannel setChannel:](v22, "setChannel:", [v16 unsignedIntegerValue]);
              -[CWFChannel setFlags:](v22, "setFlags:", [v20 unsignedIntValue]);
              v23 = MEMORY[0x1E696AD98];
              v24 = 2;
            }

            v27 = [v23 numberWithInteger:v24];
            [dictionary setObject:v22 forKeyedSubscript:v27];

            v3 = v12;
            goto LABEL_30;
          }

          v3 = v12;
        }

LABEL_32:
        ++v8;
      }

      while (v34 != v8);
      v28 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
      v34 = v28;
      if (!v28)
      {
LABEL_37:

        [(CWFBSS *)v6 setInternal:dictionary];
        break;
      }
    }
  }

  v29 = *MEMORY[0x1E69E9840];
  return v6;
}

- (id)externalForm
{
  v34 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  allKeys = [(NSMutableDictionary *)self->_internal allKeys];
  v5 = [allKeys countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v30;
    v28 = @"ChannelFlags";
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v30 != v7)
        {
          objc_enumerationMutation(allKeys);
        }

        v9 = *(*(&v29 + 1) + 8 * i);
        v10 = -[CWFBSS __keyForProperty:](self, "__keyForProperty:", [v9 integerValue]);
        integerValue = [v9 integerValue];
        v12 = integerValue;
        if (v10)
        {
          v13 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:v9];
          v14 = v13;
          if (v12 != 12 || [v13 count])
          {
            [dictionary setObject:v14 forKeyedSubscript:v10];
          }

          goto LABEL_20;
        }

        switch(integerValue)
        {
          case 11:
            v23 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:v9];
            v14 = v23;
            if (v23)
            {
              v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v23, "channel")}];
              [dictionary setObject:v24 forKeyedSubscript:@"colocated5GHzRNRChannel"];

              v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v14, "flags")}];
              v18 = dictionary;
              v19 = v17;
              v20 = @"colocated5GHzRNRChannelFlags";
              goto LABEL_19;
            }

            break;
          case 10:
            v21 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:v9];
            v14 = v21;
            if (v21)
            {
              v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v21, "channel")}];
              [dictionary setObject:v22 forKeyedSubscript:@"colocated2GHzRNRChannel"];

              v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v14, "flags")}];
              v18 = dictionary;
              v19 = v17;
              v20 = @"colocated2GHzRNRChannelFlags";
              goto LABEL_19;
            }

            break;
          case 2:
            v15 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:v9];
            v14 = v15;
            if (v15)
            {
              v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v15, "channel")}];
              [dictionary setObject:v16 forKeyedSubscript:@"Channel"];

              v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v14, "flags")}];
              v18 = dictionary;
              v19 = v17;
              v20 = v28;
LABEL_19:
              [v18 setObject:v19 forKeyedSubscript:v20];
            }

            break;
          default:
            goto LABEL_21;
        }

LABEL_20:

LABEL_21:
      }

      v6 = [allKeys countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v6);
  }

  v25 = [dictionary copy];
  v26 = *MEMORY[0x1E69E9840];

  return v25;
}

- (void)mergeWithBSS:(id)s
{
  internal = self->_internal;
  internal = [s internal];
  [(NSMutableDictionary *)internal addEntriesFromDictionary:internal];
}

- (id)__defaultProperties
{
  v2 = [MEMORY[0x1E695DFA8] set];
  for (i = 0; i != 13; ++i)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInteger:i];
    [v2 addObject:v4];
  }

  v5 = [v2 copy];

  return v5;
}

- (id)__classDStorageProperties
{
  v2 = [MEMORY[0x1E695DFA8] set];
  for (i = 0; i != 13; ++i)
  {
    if (i > 0xC || ((1 << i) & 0x133A) == 0)
    {
      v4 = [MEMORY[0x1E696AD98] numberWithInteger:i];
      [v2 addObject:v4];
    }
  }

  if (v2)
  {
    v5 = [v2 copy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)__filteredBSSWithProperties:(id)properties OSSpecificKeys:(id)keys
{
  v35 = *MEMORY[0x1E69E9840];
  propertiesCopy = properties;
  keysCopy = keys;
  v8 = objc_alloc_init(CWFBSS);
  v9 = [(NSMutableDictionary *)self->_internal mutableCopy];
  if (propertiesCopy)
  {
    properties = [(CWFBSS *)self properties];
    v11 = [properties mutableCopy];

    [v11 minusSet:propertiesCopy];
    allObjects = [v11 allObjects];
    [v9 removeObjectsForKeys:allObjects];
  }

  [(CWFBSS *)v8 setInternal:v9];
  v13 = [propertiesCopy containsObject:&unk_1F5BBC400];
  if (keysCopy && v13)
  {
    v27 = v9;
    v28 = v8;
    v29 = propertiesCopy;
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    oSSpecificAttributes = [(CWFBSS *)self OSSpecificAttributes];
    allKeys = [oSSpecificAttributes allKeys];

    v17 = [allKeys countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v31;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v31 != v19)
          {
            objc_enumerationMutation(allKeys);
          }

          v21 = *(*(&v30 + 1) + 8 * i);
          if ([keysCopy containsObject:v21])
          {
            oSSpecificAttributes2 = [(CWFBSS *)self OSSpecificAttributes];
            v23 = [oSSpecificAttributes2 objectForKeyedSubscript:v21];
            [dictionary setObject:v23 forKeyedSubscript:v21];
          }
        }

        v18 = [allKeys countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v18);
    }

    v24 = [dictionary copy];
    v8 = v28;
    [(CWFBSS *)v28 setOSSpecificAttributes:v24];

    propertiesCopy = v29;
    v9 = v27;
  }

  v25 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)filteredBSSForClassDStorage
{
  __classDStorageProperties = [(CWFBSS *)self __classDStorageProperties];
  if (__classDStorageProperties)
  {
    v4 = [(CWFBSS *)self __filteredBSSWithProperties:__classDStorageProperties OSSpecificKeys:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)coreWiFiSpecificAttributes
{
  __coreWiFiSpecificProperties = [(CWFBSS *)self __coreWiFiSpecificProperties];
  v4 = [MEMORY[0x1E695DFD8] setWithArray:__coreWiFiSpecificProperties];
  v5 = [MEMORY[0x1E695DFD8] set];
  v6 = [(CWFBSS *)self __filteredBSSWithProperties:v4 OSSpecificKeys:v5];

  externalForm = [v6 externalForm];

  return externalForm;
}

- (void)setCoreWiFiSpecificAttributes:(id)attributes
{
  attributesCopy = attributes;
  __coreWiFiSpecificProperties = [(CWFBSS *)self __coreWiFiSpecificProperties];
  v5 = [[CWFBSS alloc] initWithExternalForm:attributesCopy];

  v6 = [MEMORY[0x1E695DFD8] setWithArray:__coreWiFiSpecificProperties];
  v7 = [MEMORY[0x1E695DFD8] set];
  v8 = [(CWFBSS *)v5 __filteredBSSWithProperties:v6 OSSpecificKeys:v7];

  internal = self->_internal;
  internal = [v8 internal];
  [(NSMutableDictionary *)internal addEntriesFromDictionary:internal];
}

- (id)__infoForLocation:(id)location
{
  v16[4] = *MEMORY[0x1E69E9840];
  v15[0] = @"LocationLatitude";
  v3 = MEMORY[0x1E696AD98];
  locationCopy = location;
  [locationCopy coordinate];
  v5 = [v3 numberWithDouble:?];
  v16[0] = v5;
  v15[1] = @"LocationLongitude";
  v6 = MEMORY[0x1E696AD98];
  [locationCopy coordinate];
  v8 = [v6 numberWithDouble:v7];
  v16[1] = v8;
  v15[2] = @"LocationAccuracy";
  v9 = MEMORY[0x1E696AD98];
  [locationCopy horizontalAccuracy];
  v10 = [v9 numberWithDouble:?];
  v16[2] = v10;
  v15[3] = @"LocationTimestamp";
  timestamp = [locationCopy timestamp];

  v16[3] = timestamp;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:4];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)__locationFromInfo:(id)info
{
  infoCopy = info;
  v4 = [infoCopy objectForKeyedSubscript:@"LocationLatitude"];
  v5 = [infoCopy objectForKeyedSubscript:@"LocationLongitude"];
  v6 = [infoCopy objectForKeyedSubscript:@"LocationAccuracy"];
  v7 = [infoCopy objectForKeyedSubscript:@"LocationTimestamp"];
  v8 = v7;
  if (v4)
  {
    v9 = v5 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9 || v6 == 0 || v7 == 0)
  {
    goto LABEL_19;
  }

  [v4 doubleValue];
  v13 = v12;
  [v5 doubleValue];
  v15 = v14;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v16 = off_1ED7E39A0;
  v36 = off_1ED7E39A0;
  if (!off_1ED7E39A0)
  {
    v29 = MEMORY[0x1E69E9820];
    v30 = 3221225472;
    v31 = sub_1E0C642E4;
    v32 = &unk_1E86E5600;
    v17 = sub_1E0C64334();
    v34[3] = dlsym(v17, "CLLocationCoordinate2DMake");
    off_1ED7E39A0 = v34[3];
    v16 = v34[3];
  }

  _Block_object_dispose(&v33, 8);
  if (!v16)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v28 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CLLocationCoordinate2D soft_CLLocationCoordinate2DMake(CLLocationDegrees, CLLocationDegrees)"}];
    [currentHandler handleFailureInFunction:v28 file:@"CWFBSS.m" lineNumber:34 description:{@"%s", dlerror(), v29, v30, v31, v32}];
LABEL_25:

    __break(1u);
    return result;
  }

  v18 = v16(v13, v15);
  v20 = v19;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v21 = off_1ED7E39A8;
  v36 = off_1ED7E39A8;
  if (!off_1ED7E39A8)
  {
    v29 = MEMORY[0x1E69E9820];
    v30 = 3221225472;
    v31 = sub_1E0C64458;
    v32 = &unk_1E86E5600;
    v22 = sub_1E0C64334();
    v34[3] = dlsym(v22, "CLLocationCoordinate2DIsValid");
    off_1ED7E39A8 = v34[3];
    v21 = v34[3];
  }

  _Block_object_dispose(&v33, 8);
  if (!v21)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v28 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"BOOL soft_CLLocationCoordinate2DIsValid(CLLocationCoordinate2D)"];
    [currentHandler handleFailureInFunction:v28 file:@"CWFBSS.m" lineNumber:40 description:{@"%s", dlerror(), v29, v30, v31, v32}];
    goto LABEL_25;
  }

  if (!v21(v18, v20))
  {
LABEL_19:
    v25 = 0;
    goto LABEL_20;
  }

  v23 = objc_alloc(sub_1E0BCC51C());
  [v6 doubleValue];
  v25 = [v23 initWithCoordinate:v8 altitude:v18 horizontalAccuracy:v20 verticalAccuracy:0.0 timestamp:{v24, 0.0}];
LABEL_20:

  return v25;
}

- (CLLocation)location
{
  v3 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBC478];
  v4 = [(CWFBSS *)self __locationFromInfo:v3];

  return v4;
}

- (void)setLocation:(id)location
{
  v4 = [(CWFBSS *)self __infoForLocation:location];
  [(NSMutableDictionary *)self->_internal setObject:v4 forKeyedSubscript:&unk_1F5BBC478];
}

- (void)setOSSpecificAttributes:(id)attributes
{
  v39 = *MEMORY[0x1E69E9840];
  attributesCopy = attributes;
  v5 = attributesCopy;
  if (attributesCopy)
  {
    selfCopy = self;
    v25 = attributesCopy;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    allKeys = [attributesCopy allKeys];
    v7 = [allKeys countByEnumeratingWithState:&v26 objects:v38 count:16];
    if (v7)
    {
      v8 = v7;
      array = 0;
      v10 = *v27;
      v11 = MEMORY[0x1E69E9C10];
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v27 != v10)
          {
            objc_enumerationMutation(allKeys);
          }

          v13 = *(*(&v26 + 1) + 8 * i);
          v14 = [CWFBSS supportedOSSpecificKeys:v22];
          v15 = [v14 containsObject:v13];

          if ((v15 & 1) == 0)
          {
            if (!array)
            {
              array = [MEMORY[0x1E695DF70] array];
            }

            [array addObject:v13];
            v16 = CWFGetOSLog();
            if (v16)
            {
              v17 = CWFGetOSLog();
            }

            else
            {
              v18 = v11;
              v17 = v11;
            }

            if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
            {
              v30 = 136446978;
              v31 = "[CWFBSS setOSSpecificAttributes:]";
              v32 = 2082;
              v33 = "CWFBSS.m";
              v34 = 1024;
              v35 = 697;
              v36 = 2112;
              v37 = v13;
              LODWORD(v23) = 38;
              v22 = &v30;
              _os_log_send_and_compose_impl();
            }
          }
        }

        v8 = [allKeys countByEnumeratingWithState:&v26 objects:v38 count:16];
      }

      while (v8);
    }

    else
    {
      array = 0;
    }

    if ([array count])
    {
      v5 = v25;
      v19 = [v25 mutableCopy];
      [v19 removeObjectsForKeys:array];
    }

    else
    {
      v19 = 0;
      v5 = v25;
    }

    self = selfCopy;
  }

  else
  {
    v19 = 0;
  }

  if (v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = v5;
  }

  [(NSMutableDictionary *)self->_internal setObject:v20 forKeyedSubscript:&unk_1F5BBC400, v22, v23];

  v21 = *MEMORY[0x1E69E9840];
}

- (void)setOSSpecificValue:(id)value forKey:(id)key
{
  v16 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  keyCopy = key;
  if (keyCopy && (+[CWFBSS supportedOSSpecificKeys](CWFBSS, "supportedOSSpecificKeys"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 containsObject:keyCopy], v8, v9))
  {
    v10 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBC400];

    if (valueCopy && !v10)
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      [(NSMutableDictionary *)self->_internal setObject:dictionary forKeyedSubscript:&unk_1F5BBC400];
    }

    v12 = [(NSMutableDictionary *)self->_internal objectForKeyedSubscript:&unk_1F5BBC400];
    [v12 setObject:valueCopy forKeyedSubscript:keyCopy];
  }

  else
  {
    v13 = CWFGetOSLog();
    if (v13)
    {
      v12 = CWFGetOSLog();
    }

    else
    {
      v12 = MEMORY[0x1E69E9C10];
      v14 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      _os_log_send_and_compose_impl();
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (id)OSSpecificValueForKey:(id)key
{
  if (key)
  {
    internal = self->_internal;
    keyCopy = key;
    v5 = [(NSMutableDictionary *)internal objectForKeyedSubscript:&unk_1F5BBC400];
    v6 = [v5 objectForKeyedSubscript:keyCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)debugDescription
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = [(CWFBSS *)self description];
  [string appendString:v4];

  [string appendString:{@", "}];
  iPv4NetworkSignature = [(CWFBSS *)self IPv4NetworkSignature];

  if (iPv4NetworkSignature)
  {
    iPv4NetworkSignature2 = [(CWFBSS *)self IPv4NetworkSignature];
    [string appendFormat:@"ipv4=%@, ", iPv4NetworkSignature2];
  }

  dHCPServerID = [(CWFBSS *)self DHCPServerID];

  if (dHCPServerID)
  {
    dHCPServerID2 = [(CWFBSS *)self DHCPServerID];
    v9 = CWFHexadecimalStringFromData(dHCPServerID2);
    [string appendFormat:@"dhcp=%@, ", v9];
  }

  iPv6NetworkSignature = [(CWFBSS *)self IPv6NetworkSignature];

  if (iPv6NetworkSignature)
  {
    iPv6NetworkSignature2 = [(CWFBSS *)self IPv6NetworkSignature];
    [string appendFormat:@"ipv6=%@, ", iPv6NetworkSignature2];
  }

  dHCPv6ServerID = [(CWFBSS *)self DHCPv6ServerID];

  if (dHCPv6ServerID)
  {
    dHCPv6ServerID2 = [(CWFBSS *)self DHCPv6ServerID];
    v14 = CWFHexadecimalStringFromData(dHCPv6ServerID2);
    [string appendFormat:@"dhcpv6=%@, ", v14];
  }

  location = [(CWFBSS *)self location];

  if (location)
  {
    location2 = [(CWFBSS *)self location];
    v17 = [location2 description];
    redactedSensitiveContentForWiFi = [v17 redactedSensitiveContentForWiFi];
    [string appendFormat:@"location=%@, ", redactedSensitiveContentForWiFi];
  }

  if ([string hasSuffix:{@", "}])
  {
    [string deleteCharactersInRange:{objc_msgSend(string, "length") - 2, 2}];
  }

  return string;
}

- (BOOL)isEqualToBSS:(id)s
{
  sCopy = s;
  bSSID = [(CWFBSS *)self BSSID];
  bSSID2 = [sCopy BSSID];
  if (bSSID != bSSID2)
  {
    bSSID3 = [(CWFBSS *)self BSSID];
    if (!bSSID3)
    {
      v20 = 0;
      goto LABEL_20;
    }

    v3 = bSSID3;
    bSSID4 = [sCopy BSSID];
    if (!bSSID4)
    {
      v20 = 0;
LABEL_19:

      goto LABEL_20;
    }

    bSSID5 = [(CWFBSS *)self BSSID];
    bSSID6 = [sCopy BSSID];
    if (![bSSID5 isEqual:bSSID6])
    {
      v20 = 0;
LABEL_18:

      goto LABEL_19;
    }

    v24 = bSSID6;
    v25 = bSSID5;
  }

  internal = [(CWFBSS *)self internal];
  internal2 = [sCopy internal];
  v14 = internal2;
  if (internal == internal2)
  {

    v20 = 1;
  }

  else
  {
    internal3 = [(CWFBSS *)self internal];
    if (internal3)
    {
      v16 = internal3;
      internal4 = [sCopy internal];
      if (internal4)
      {
        [(CWFBSS *)self internal];
        v18 = v22 = bSSID4;
        [sCopy internal];
        v19 = v23 = v3;
        v20 = [v18 isEqual:v19];

        v3 = v23;
        bSSID4 = v22;
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {

      v20 = 0;
    }
  }

  bSSID6 = v24;
  bSSID5 = v25;
  if (bSSID != bSSID2)
  {
    goto LABEL_18;
  }

LABEL_20:

  return v20;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CWFBSS *)self isEqualToBSS:v5];
  }

  return v6;
}

- (id)deepCopy
{
  v19 = *MEMORY[0x1E69E9840];
  v16 = 0;
  v2 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self requiringSecureCoding:1 error:&v16];
  v3 = v16;
  if (v2)
  {
    v15 = v3;
    v4 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v2 error:&v15];
    v5 = v15;

    if (v4)
    {
      v6 = v4;
      v7 = v6;
    }

    else
    {
      v9 = CWFGetOSLog();
      if (v9)
      {
        v10 = CWFGetOSLog();
      }

      else
      {
        v10 = MEMORY[0x1E69E9C10];
        v12 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v17 = 138412290;
        v18 = v5;
        _os_log_send_and_compose_impl();
      }

      v6 = 0;
      v7 = 0;
    }
  }

  else
  {
    v8 = CWFGetOSLog();
    if (v8)
    {
      v6 = CWFGetOSLog();
    }

    else
    {
      v6 = MEMORY[0x1E69E9C10];
      v11 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v17 = 138412290;
      v18 = v3;
      _os_log_send_and_compose_impl();
    }

    v7 = 0;
    v5 = v3;
  }

  v13 = *MEMORY[0x1E69E9840];

  return v7;
}

- (CWFBSS)initWithCoder:(id)coder
{
  v15[8] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = CWFBSS;
  v5 = [(CWFBSS *)&v14 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFA8];
    v15[0] = objc_opt_class();
    v15[1] = objc_opt_class();
    v15[2] = objc_opt_class();
    v15[3] = objc_opt_class();
    v15[4] = objc_opt_class();
    v15[5] = objc_opt_class();
    v15[6] = objc_opt_class();
    v15[7] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:8];
    v8 = [v6 setWithArray:v7];

    if (sub_1E0BCC6CC())
    {
      sub_1E0BCC51C();
      [v8 addObject:objc_opt_class()];
    }

    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"_internal"];
    v10 = [v9 mutableCopy];
    internal = v5->_internal;
    v5->_internal = v10;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)wasJoinedRecentlyInProximityOf:(id)of
{
  ofCopy = of;
  lastAssociatedAt = [(CWFBSS *)self lastAssociatedAt];
  if (lastAssociatedAt)
  {
    location = [(CWFBSS *)self location];

    LOBYTE(lastAssociatedAt) = 0;
    if (ofCopy)
    {
      if (location)
      {
        location2 = [(CWFBSS *)self location];
        [ofCopy distanceFromLocation:location2];
        v9 = v8;

        if (v9 <= 300.0)
        {
          lastAssociatedAt2 = [(CWFBSS *)self lastAssociatedAt];
          date = [MEMORY[0x1E695DF00] date];
          LODWORD(lastAssociatedAt) = !sub_1E0BF1C80(lastAssociatedAt2, 5, date);
        }

        else
        {
          LOBYTE(lastAssociatedAt) = 0;
        }
      }
    }
  }

  return lastAssociatedAt;
}

- (id)JSONCompatibleKeyValueMap
{
  externalForm = [(CWFBSS *)self externalForm];
  v3 = sub_1E0BCEC64(externalForm, 0, 1u);

  if (v3)
  {
    v4 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end