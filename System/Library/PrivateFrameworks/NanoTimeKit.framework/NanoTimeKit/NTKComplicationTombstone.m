@interface NTKComplicationTombstone
+ (id)tombstoneWithComplication:(id)a3;
- (NTKComplicationTombstone)initWithCoder:(id)a3;
- (id)_generateUniqueIdentifier;
- (id)_migrateToFamily:(int64_t)a3 withAllowedComplications:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_addKeysToJSONDictionary:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NTKComplicationTombstone

- (id)_migrateToFamily:(int64_t)a3 withAllowedComplications:(id)a4
{
  v6 = a4;
  v7 = [(NTKComplicationTombstone *)self complication];
  v8 = [v7 _migrateToFamily:a3 withAllowedComplications:v6];

  return v8;
}

+ (id)tombstoneWithComplication:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithComplicationType:0];
  v6 = v5[4];
  v5[4] = v4;

  v7 = [v5 _generateUniqueIdentifier];
  [v5 setUniqueIdentifier:v7];

  return v5;
}

- (id)_generateUniqueIdentifier
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(NTKComplication *)self->_complication uniqueIdentifier];
  v4 = [v2 stringWithFormat:@"tombstone-%@", v3];

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = NTKComplicationTombstone;
  v4 = [(NTKComplication *)&v6 copyWithZone:a3];
  objc_storeStrong(v4 + 4, self->_complication);
  return v4;
}

- (NTKComplicationTombstone)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = NTKComplicationTombstone;
  v5 = [(NTKComplication *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ComplicationTombstoneComplicationKey"];
    complication = v5->_complication;
    v5->_complication = v6;

    if (!v5->_complication)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CCA2A8] format:{@"%@ cannot have nil complication", objc_opt_class()}];
    }

    v8 = [(NTKComplicationTombstone *)v5 _generateUniqueIdentifier];
    [(NTKComplication *)v5 setUniqueIdentifier:v8];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = NTKComplicationTombstone;
  v4 = a3;
  [(NTKComplication *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_complication forKey:{@"ComplicationTombstoneComplicationKey", v5.receiver, v5.super_class}];
}

- (void)_addKeysToJSONDictionary:(id)a3
{
  v6.receiver = self;
  v6.super_class = NTKComplicationTombstone;
  v4 = a3;
  [(NTKComplication *)&v6 _addKeysToJSONDictionary:v4];
  [v4 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:{@"available", v6.receiver, v6.super_class}];
  v5 = [(NTKComplication *)self->_complication JSONObjectRepresentation];
  [v4 addEntriesFromDictionary:v5];
}

@end