@interface NTKComplicationTombstone
+ (id)tombstoneWithComplication:(id)complication;
- (NTKComplicationTombstone)initWithCoder:(id)coder;
- (id)_generateUniqueIdentifier;
- (id)_migrateToFamily:(int64_t)family withAllowedComplications:(id)complications;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_addKeysToJSONDictionary:(id)dictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NTKComplicationTombstone

- (id)_migrateToFamily:(int64_t)family withAllowedComplications:(id)complications
{
  complicationsCopy = complications;
  complication = [(NTKComplicationTombstone *)self complication];
  v8 = [complication _migrateToFamily:family withAllowedComplications:complicationsCopy];

  return v8;
}

+ (id)tombstoneWithComplication:(id)complication
{
  complicationCopy = complication;
  v5 = [[self alloc] initWithComplicationType:0];
  v6 = v5[4];
  v5[4] = complicationCopy;

  _generateUniqueIdentifier = [v5 _generateUniqueIdentifier];
  [v5 setUniqueIdentifier:_generateUniqueIdentifier];

  return v5;
}

- (id)_generateUniqueIdentifier
{
  v2 = MEMORY[0x277CCACA8];
  uniqueIdentifier = [(NTKComplication *)self->_complication uniqueIdentifier];
  v4 = [v2 stringWithFormat:@"tombstone-%@", uniqueIdentifier];

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = NTKComplicationTombstone;
  v4 = [(NTKComplication *)&v6 copyWithZone:zone];
  objc_storeStrong(v4 + 4, self->_complication);
  return v4;
}

- (NTKComplicationTombstone)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = NTKComplicationTombstone;
  v5 = [(NTKComplication *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ComplicationTombstoneComplicationKey"];
    complication = v5->_complication;
    v5->_complication = v6;

    if (!v5->_complication)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CCA2A8] format:{@"%@ cannot have nil complication", objc_opt_class()}];
    }

    _generateUniqueIdentifier = [(NTKComplicationTombstone *)v5 _generateUniqueIdentifier];
    [(NTKComplication *)v5 setUniqueIdentifier:_generateUniqueIdentifier];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = NTKComplicationTombstone;
  coderCopy = coder;
  [(NTKComplication *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_complication forKey:{@"ComplicationTombstoneComplicationKey", v5.receiver, v5.super_class}];
}

- (void)_addKeysToJSONDictionary:(id)dictionary
{
  v6.receiver = self;
  v6.super_class = NTKComplicationTombstone;
  dictionaryCopy = dictionary;
  [(NTKComplication *)&v6 _addKeysToJSONDictionary:dictionaryCopy];
  [dictionaryCopy setObject:MEMORY[0x277CBEC28] forKeyedSubscript:{@"available", v6.receiver, v6.super_class}];
  jSONObjectRepresentation = [(NTKComplication *)self->_complication JSONObjectRepresentation];
  [dictionaryCopy addEntriesFromDictionary:jSONObjectRepresentation];
}

@end