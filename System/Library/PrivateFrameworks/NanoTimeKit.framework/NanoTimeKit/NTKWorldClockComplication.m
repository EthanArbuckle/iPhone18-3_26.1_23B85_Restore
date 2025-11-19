@interface NTKWorldClockComplication
+ (id)_allCities;
+ (id)_allComplicationConfigurationsWithType:(unint64_t)a3;
+ (int64_t)compareComplication:(id)a3 toComplication:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)snapshotContext:(id)a3 isStaleRelativeToContext:(id)a4;
- (NTKWorldClockComplication)initWithCoder:(id)a3;
- (id)_generateUniqueIdentifier;
- (id)_initWithComplicationType:(unint64_t)a3 JSONDictionary:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)customDailySnapshotKeyForFamily:(int64_t)a3 device:(id)a4;
- (id)description;
- (id)localizedDetailText;
- (void)_addKeysToJSONDictionary:(id)a3;
- (void)_handleAddedFromFaceSharing;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NTKWorldClockComplication

+ (int64_t)compareComplication:(id)a3 toComplication:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 _allCities];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __64__NTKWorldClockComplication_compareComplication_toComplication___block_invoke;
  aBlock[3] = &unk_278787550;
  v19 = v8;
  v9 = v8;
  v10 = _Block_copy(aBlock);
  v11 = v10[2](v10, v6);
  v12 = v10[2](v10, v7);
  if (v11 == v12)
  {
    v13 = [v6 complicationType];
    v14 = [v7 complicationType];
    v15 = -1;
    if (v13 >= v14)
    {
      v15 = 1;
    }

    if (v13 == v14)
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
  v3 = [v2 cities];
  if (!v3 || (v4 = v3, v5 = [v2 checkIfCitiesModified], v4, v5))
  {
    [v2 loadCities];
  }

  v6 = [v2 cities];

  return v6;
}

+ (id)_allComplicationConfigurationsWithType:(unint64_t)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CBEB18] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = [a1 _allCities];
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
        v11 = [[a1 alloc] initWithComplicationType:a3];
        objc_storeStrong((v11 + 32), v10);
        v12 = [v11 _generateUniqueIdentifier];
        v13 = *(v11 + 8);
        *(v11 + 8) = v12;

        [v5 addObject:v11];
      }

      v7 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v8 = 0;
  if (objc_opt_isKindOfClass())
  {
    v5 = [(NTKWorldClockComplication *)self city];
    v6 = [v4 city];
    v7 = [v5 isEqual:v6];

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
  v5 = [v4 stringValue];
  v6 = [(WorldClockCity *)self->_city alCityId];
  v7 = [v3 stringWithFormat:@"%@-%@", v5, v6];

  return v7;
}

- (id)localizedDetailText
{
  v3 = [(NTKWorldClockComplication *)self city];
  v4 = [v3 name];

  if (v4)
  {
    v5 = [MEMORY[0x277CBBAE8] currentDevice];
    if ([v5 supportsPDRCapability:2031260689])
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v4];
    }

    else
    {
      v6 = v4;
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
  v5 = [(WorldClockCity *)self->_city alCityId];
  v6 = [v3 stringWithFormat:@"%@ (%d)", v4, objc_msgSend(v5, "intValue")];

  return v6;
}

- (id)customDailySnapshotKeyForFamily:(int64_t)a3 device:(id)a4
{
  v4 = MEMORY[0x277CCACA8];
  v5 = [(WorldClockCity *)self->_city alCityId:a3];
  v6 = [v4 stringWithFormat:@"%d", objc_msgSend(v5, "intValue")];

  return v6;
}

- (BOOL)snapshotContext:(id)a3 isStaleRelativeToContext:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 calendarDateMatchesContext:v6] && objc_msgSend(v5, "timeZoneMatchesContext:", v6))
  {
    v7 = [v5 localeMatchesContext:v6] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 1;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = NTKWorldClockComplication;
  v4 = [(NTKComplication *)&v6 copyWithZone:a3];
  objc_storeStrong(v4 + 4, self->_city);
  return v4;
}

- (NTKWorldClockComplication)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = NTKWorldClockComplication;
  v5 = [(NTKComplication *)&v12 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeIntForKey:@"WorldClockComplicationCityKey"];
    v7 = [objc_alloc(MEMORY[0x277D29750]) initWithALCityIdentifier:v6];
    city = v5->_city;
    v5->_city = v7;

    if (!v5->_city)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CCA2A8] format:{@"%@ cannot have nil city", objc_opt_class()}];
    }

    v9 = [(NTKWorldClockComplication *)v5 _generateUniqueIdentifier];
    uniqueIdentifier = v5->super._uniqueIdentifier;
    v5->super._uniqueIdentifier = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = NTKWorldClockComplication;
  v4 = a3;
  [(NTKComplication *)&v6 encodeWithCoder:v4];
  v5 = [(WorldClockCity *)self->_city alCityId:v6.receiver];
  [v4 encodeInt:objc_msgSend(v5 forKey:{"intValue"), @"WorldClockComplicationCityKey"}];
}

- (void)_addKeysToJSONDictionary:(id)a3
{
  v6.receiver = self;
  v6.super_class = NTKWorldClockComplication;
  v4 = a3;
  [(NTKComplication *)&v6 _addKeysToJSONDictionary:v4];
  v5 = [(WorldClockCity *)self->_city alCityId:v6.receiver];
  [v4 setObject:v5 forKeyedSubscript:@"city ID"];
}

- (id)_initWithComplicationType:(unint64_t)a3 JSONDictionary:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = NTKWorldClockComplication;
  v7 = [(NTKComplication *)&v12 _initWithComplicationType:a3 JSONDictionary:v6];
  if (v7)
  {
    v8 = [v6 objectForKeyedSubscript:@"city ID"];
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

            v10 = [*(*(&v13 + 1) + 8 * i) alCityId];
            v11 = [(WorldClockCity *)self->_city alCityId];
            v12 = [v10 isEqual:v11];

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