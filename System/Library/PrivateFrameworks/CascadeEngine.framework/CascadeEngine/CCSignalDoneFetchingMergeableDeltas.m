@interface CCSignalDoneFetchingMergeableDeltas
- (id)dictionaryRepresentation;
- (id)initFromDictionary:(id)a3;
@end

@implementation CCSignalDoneFetchingMergeableDeltas

- (id)initFromDictionary:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CCSignalDoneFetchingMergeableDeltas;
  v5 = [(CCPeerToPeerMessage *)&v8 initFromDictionary:v4];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"isReciprocalRequest"];
    v5[40] = [v6 BOOLValue];
  }

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [MEMORY[0x1E696AD98] numberWithBool:self->_isReciprocalRequest];
  [v3 setObject:v4 forKeyedSubscript:@"isReciprocalRequest"];

  v7.receiver = self;
  v7.super_class = CCSignalDoneFetchingMergeableDeltas;
  v5 = [(CCPeerToPeerMessage *)&v7 dictionaryRepresentation];
  [v3 addEntriesFromDictionary:v5];

  return v3;
}

@end