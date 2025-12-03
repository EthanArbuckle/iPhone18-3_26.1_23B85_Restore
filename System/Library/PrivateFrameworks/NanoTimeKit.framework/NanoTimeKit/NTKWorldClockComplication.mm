@interface NTKWorldClockComplication
+ (id)_allCities;
+ (id)_allComplicationConfigurationsWithType:(unint64_t)type;
+ (int64_t)compareComplication:(id)complication toComplication:(id)toComplication;
- (BOOL)isEqual:(id)equal;
- (BOOL)snapshotContext:(id)context isStaleRelativeToContext:(id)toContext;
- (NTKWorldClockComplication)initWithCoder:(id)coder;
- (id)_generateUniqueIdentifier;
- (id)_initWithComplicationType:(unint64_t)type JSONDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)customDailySnapshotKeyForFamily:(int64_t)family device:(id)device;
- (id)description;
- (id)localizedDetailText;
- (void)_addKeysToJSONDictionary:(id)dictionary;
- (void)_handleAddedFromFaceSharing;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NTKWorldClockComplication

+ (int64_t)compareComplication:(id)complication toComplication:(id)toComplication
{
  complicationCopy = complication;
  toComplicationCopy = toComplication;
  _allCities = [self _allCities];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __64__NTKWorldClockComplication_compareComplication_toComplication___block_invoke;
  aBlock[3] = &unk_278787550;
  v19 = _allCities;
  v9 = _allCities;
  v10 = _Block_copy(aBlock);
  v11 = v10[2](v10, complicationCopy);
  v12 = v10[2](v10, toComplicationCopy);
  if (v11 == v12)
  {
    complicationType = [complicationCopy complicationType];
    complicationType2 = [toComplicationCopy complicationType];
    v15 = -1;
    if (complicationType >= complicationType2)
    {
      v15 = 1;
    }

    if (complicationType == complicationType2)
    {
      v16 = 0;
    }

    else
    {
      v16 = v15;
    }
  }

  else if (v11 < v12)
  {
    v16 = -1;
  }

  else
  {
    v16 = 1;
  }

  return v16;
}

uint64_t __64__NTKWorldClockComplication_compareComplication_toComplication___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = -3;
  }

  else if ([v3 complicationType] == 12)
  {
    v4 = -1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [v3 city];
      v6 = [v5 alCityId];
    }

    else
    {
      v6 = 0;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v3 complicationDescriptor];
      v8 = [v7 userInfo];
      v9 = [v8 objectForKey:@"cityID"];

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {

        v9 = 0;
      }

      v6 = v9;
    }

    v10 = *(a1 + 32);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __64__NTKWorldClockComplication_compareComplication_toComplication___block_invoke_2;
    v14[3] = &unk_278787528;
    v15 = v6;
    v11 = v6;
    v12 = [v10 indexOfObjectPassingTest:v14];
    if (v12 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v4 = -2;
    }

    else
    {
      v4 = v12;
    }
  }

  return v4;
}

uint64_t __64__NTKWorldClockComplication_compareComplication_toComplication___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 alCityId];
  v7 = v6;
  if (v6 == *(a1 + 32))
  {
    v8 = 1;
  }

  else
  {
    v8 = [v6 isEqual:?];
  }

  *a4 = v8;

  return v8;
}

+ (id)_allCities
{
  v2 = +[NTKWorldClockManager sharedManager];
  cities = [v2 cities];
  if (!cities || (v4 = cities, v5 = [v2 checkIfCitiesModified], v4, v5))
  {
    [v2 loadCities];
  }

  cities2 = [v2 cities];

  return cities2;
}

+ (id)_allComplicationConfigurationsWithType:(unint64_t)type
{
  v21 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = [self _allCities];
  v6 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [[self alloc] initWithComplicationType:type];
        objc_storeStrong((v11 + 32), v10);
        _generateUniqueIdentifier = [v11 _generateUniqueIdentifier];
        v13 = *(v11 + 8);
        *(v11 + 8) = _generateUniqueIdentifier;

        [array addObject:v11];
      }

      v7 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  return array;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v8 = 0;
  if (objc_opt_isKindOfClass())
  {
    city = [(NTKWorldClockComplication *)self city];
    city2 = [equalCopy city];
    v7 = [city isEqual:city2];

    if (v7)
    {
      v8 = 1;
    }
  }

  return v8;
}

- (id)_generateUniqueIdentifier
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[NTKComplication complicationType](self, "complicationType")}];
  stringValue = [v4 stringValue];
  alCityId = [(WorldClockCity *)self->_city alCityId];
  v7 = [v3 stringWithFormat:@"%@-%@", stringValue, alCityId];

  return v7;
}

- (id)localizedDetailText
{
  city = [(NTKWorldClockComplication *)self city];
  name = [city name];

  if (name)
  {
    currentDevice = [MEMORY[0x277CBBAE8] currentDevice];
    if ([currentDevice supportsPDRCapability:2031260689])
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", name];
    }

    else
    {
      v6 = name;
    }

    v7 = v6;
  }

  else
  {
    v7 = NTKComplicationTypeLocalizedLabelText([(NTKComplication *)self complicationType]);
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NTKWorldClockComplication;
  v4 = [(NTKComplication *)&v8 description];
  alCityId = [(WorldClockCity *)self->_city alCityId];
  v6 = [v3 stringWithFormat:@"%@ (%d)", v4, objc_msgSend(alCityId, "intValue")];

  return v6;
}

- (id)customDailySnapshotKeyForFamily:(int64_t)family device:(id)device
{
  v4 = MEMORY[0x277CCACA8];
  v5 = [(WorldClockCity *)self->_city alCityId:family];
  v6 = [v4 stringWithFormat:@"%d", objc_msgSend(v5, "intValue")];

  return v6;
}

- (BOOL)snapshotContext:(id)context isStaleRelativeToContext:(id)toContext
{
  contextCopy = context;
  toContextCopy = toContext;
  if ([contextCopy calendarDateMatchesContext:toContextCopy] && objc_msgSend(contextCopy, "timeZoneMatchesContext:", toContextCopy))
  {
    v7 = [contextCopy localeMatchesContext:toContextCopy] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 1;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = NTKWorldClockComplication;
  v4 = [(NTKComplication *)&v6 copyWithZone:zone];
  objc_storeStrong(v4 + 4, self->_city);
  return v4;
}

- (NTKWorldClockComplication)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = NTKWorldClockComplication;
  v5 = [(NTKComplication *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeIntForKey:@"WorldClockComplicationCityKey"];
    v7 = [objc_alloc(MEMORY[0x277D29750]) initWithALCityIdentifier:v6];
    city = v5->_city;
    v5->_city = v7;

    if (!v5->_city)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CCA2A8] format:{@"%@ cannot have nil city", objc_opt_class()}];
    }

    _generateUniqueIdentifier = [(NTKWorldClockComplication *)v5 _generateUniqueIdentifier];
    uniqueIdentifier = v5->super._uniqueIdentifier;
    v5->super._uniqueIdentifier = _generateUniqueIdentifier;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = NTKWorldClockComplication;
  coderCopy = coder;
  [(NTKComplication *)&v6 encodeWithCoder:coderCopy];
  v5 = [(WorldClockCity *)self->_city alCityId:v6.receiver];
  [coderCopy encodeInt:objc_msgSend(v5 forKey:{"intValue"), @"WorldClockComplicationCityKey"}];
}

- (void)_addKeysToJSONDictionary:(id)dictionary
{
  v6.receiver = self;
  v6.super_class = NTKWorldClockComplication;
  dictionaryCopy = dictionary;
  [(NTKComplication *)&v6 _addKeysToJSONDictionary:dictionaryCopy];
  v5 = [(WorldClockCity *)self->_city alCityId:v6.receiver];
  [dictionaryCopy setObject:v5 forKeyedSubscript:@"city ID"];
}

- (id)_initWithComplicationType:(unint64_t)type JSONDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = NTKWorldClockComplication;
  v7 = [(NTKComplication *)&v12 _initWithComplicationType:type JSONDictionary:dictionaryCopy];
  if (v7)
  {
    v8 = [dictionaryCopy objectForKeyedSubscript:@"city ID"];
    if (!v8)
    {
      [MEMORY[0x277CBEAD8] raise:@"NTKFaceBundleException" format:{@"missing value for key '%@'", @"city ID"}];
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MEMORY[0x277CBEAD8] raise:@"NTKFaceBundleException" format:{@"value for key '%@' must be number - invalid value: %@", @"city ID", v8}];
    }

    v9 = [objc_alloc(MEMORY[0x277D29750]) initWithALCityIdentifier:{objc_msgSend(v8, "intValue")}];
    v10 = v7[4];
    v7[4] = v9;

    if (!v7[4])
    {
      [MEMORY[0x277CBEAD8] raise:@"NTKFaceBundleException" format:{@"invalid value for key '%@': %@", @"city ID", v8}];
    }
  }

  return v7;
}

- (void)_handleAddedFromFaceSharing
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = +[NTKWorldClockManager sharedManager];
  v4 = v3;
  if (self->_city)
  {
    if ([v3 canAddCity])
    {
      [objc_opt_class() _allCities];
      v13 = 0u;
      v14 = 0u;
      v15 = 0u;
      v5 = v16 = 0u;
      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v14;
        while (2)
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v14 != v8)
            {
              objc_enumerationMutation(v5);
            }

            alCityId = [*(*(&v13 + 1) + 8 * i) alCityId];
            alCityId2 = [(WorldClockCity *)self->_city alCityId];
            v12 = [alCityId isEqual:alCityId2];

            if (v12)
            {

              goto LABEL_18;
            }
          }

          v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
          if (v7)
          {
            continue;
          }

          break;
        }
      }

      if ([v4 addCity:self->_city] != 0x7FFFFFFFFFFFFFFFLL)
      {
        [v4 saveCities];
      }
    }

    else
    {
      v5 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        [(NTKWorldClockComplication *)v5 _handleAddedFromFaceSharing];
      }
    }
  }

  else
  {
    v5 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(NTKWorldClockComplication *)v5 _handleAddedFromFaceSharing];
    }
  }

LABEL_18:
}

@end