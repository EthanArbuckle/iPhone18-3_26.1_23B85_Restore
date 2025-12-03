@interface NMSSyncStatesDict
+ (id)assetTypeForMediaType:(unint64_t)type;
+ (unint64_t)mediaTypeForAssetType:(id)type;
- (NMSSyncStatesDict)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)syncStateDictionaryRepresentation;
- (id)waitingSubstateDictionaryRepresentation;
- (unint64_t)syncStateForMediaType:(unint64_t)type;
- (unint64_t)waitingSubstateForMediaType:(unint64_t)type;
- (void)setSyncState:(unint64_t)state forMediaType:(unint64_t)type;
- (void)setSyncStateForAllMediaTypes:(unint64_t)types;
- (void)setWaitingSubstate:(unint64_t)substate forMediaType:(unint64_t)type;
- (void)setWaitingSubstateForAllMediaTypes:(unint64_t)types;
@end

@implementation NMSSyncStatesDict

- (NMSSyncStatesDict)init
{
  v8.receiver = self;
  v8.super_class = NMSSyncStatesDict;
  v2 = [(NMSSyncStatesDict *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:4];
    syncStatesDict = v2->_syncStatesDict;
    v2->_syncStatesDict = v3;

    v5 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:4];
    waitingSubstatesDict = v2->_waitingSubstatesDict;
    v2->_waitingSubstatesDict = v5;
  }

  return v2;
}

- (void)setSyncState:(unint64_t)state forMediaType:(unint64_t)type
{
  v8 = [objc_opt_class() assetTypeForMediaType:type];
  if (state != 3)
  {
    [(NMSSyncStatesDict *)self setWaitingSubstate:0 forMediaType:type];
  }

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:state];
  [(NSMutableDictionary *)self->_syncStatesDict setObject:v7 forKeyedSubscript:v8];
}

- (void)setSyncStateForAllMediaTypes:(unint64_t)types
{
  for (i = 1; i != 4; ++i)
  {
    [(NMSSyncStatesDict *)self setSyncState:types forMediaType:i];
  }
}

- (void)setWaitingSubstate:(unint64_t)substate forMediaType:(unint64_t)type
{
  v7 = [objc_opt_class() assetTypeForMediaType:type];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:substate];
  [(NSMutableDictionary *)self->_waitingSubstatesDict setObject:v6 forKeyedSubscript:v7];
}

- (void)setWaitingSubstateForAllMediaTypes:(unint64_t)types
{
  for (i = 1; i != 4; ++i)
  {
    [(NMSSyncStatesDict *)self setWaitingSubstate:types forMediaType:i];
  }
}

- (unint64_t)syncStateForMediaType:(unint64_t)type
{
  v4 = [objc_opt_class() assetTypeForMediaType:type];
  v5 = [(NSMutableDictionary *)self->_syncStatesDict objectForKeyedSubscript:v4];
  v6 = v5;
  if (v5)
  {
    unsignedIntegerValue = [v5 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  return unsignedIntegerValue;
}

- (unint64_t)waitingSubstateForMediaType:(unint64_t)type
{
  v4 = [objc_opt_class() assetTypeForMediaType:type];
  v5 = [(NSMutableDictionary *)self->_waitingSubstatesDict objectForKeyedSubscript:v4];
  v6 = v5;
  if (v5)
  {
    unsignedIntegerValue = [v5 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  return unsignedIntegerValue;
}

- (id)syncStateDictionaryRepresentation
{
  v2 = [(NSMutableDictionary *)self->_syncStatesDict copy];

  return v2;
}

- (id)waitingSubstateDictionaryRepresentation
{
  v2 = [(NSMutableDictionary *)self->_waitingSubstatesDict copy];

  return v2;
}

+ (id)assetTypeForMediaType:(unint64_t)type
{
  if (type > 3)
  {
    return 0;
  }

  else
  {
    return off_27993ED30[type];
  }
}

+ (unint64_t)mediaTypeForAssetType:(id)type
{
  typeCopy = type;
  if ([typeCopy length])
  {
    if ([typeCopy isEqualToString:@"Music"])
    {
      v4 = 1;
    }

    else if ([typeCopy isEqualToString:@"Podcast"])
    {
      v4 = 2;
    }

    else if ([typeCopy isEqualToString:@"Audiobook"])
    {
      v4 = 3;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (v5)
  {
    v6 = [(NSMutableDictionary *)self->_syncStatesDict mutableCopyWithZone:zone];
    v7 = v5[1];
    v5[1] = v6;

    v8 = [(NSMutableDictionary *)self->_waitingSubstatesDict mutableCopyWithZone:zone];
    v9 = v5[2];
    v5[2] = v8;
  }

  return v5;
}

@end