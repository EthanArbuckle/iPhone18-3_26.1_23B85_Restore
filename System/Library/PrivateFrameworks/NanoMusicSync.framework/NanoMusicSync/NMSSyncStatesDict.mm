@interface NMSSyncStatesDict
+ (id)assetTypeForMediaType:(unint64_t)a3;
+ (unint64_t)mediaTypeForAssetType:(id)a3;
- (NMSSyncStatesDict)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)syncStateDictionaryRepresentation;
- (id)waitingSubstateDictionaryRepresentation;
- (unint64_t)syncStateForMediaType:(unint64_t)a3;
- (unint64_t)waitingSubstateForMediaType:(unint64_t)a3;
- (void)setSyncState:(unint64_t)a3 forMediaType:(unint64_t)a4;
- (void)setSyncStateForAllMediaTypes:(unint64_t)a3;
- (void)setWaitingSubstate:(unint64_t)a3 forMediaType:(unint64_t)a4;
- (void)setWaitingSubstateForAllMediaTypes:(unint64_t)a3;
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

- (void)setSyncState:(unint64_t)a3 forMediaType:(unint64_t)a4
{
  v8 = [objc_opt_class() assetTypeForMediaType:a4];
  if (a3 != 3)
  {
    [(NMSSyncStatesDict *)self setWaitingSubstate:0 forMediaType:a4];
  }

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [(NSMutableDictionary *)self->_syncStatesDict setObject:v7 forKeyedSubscript:v8];
}

- (void)setSyncStateForAllMediaTypes:(unint64_t)a3
{
  for (i = 1; i != 4; ++i)
  {
    [(NMSSyncStatesDict *)self setSyncState:a3 forMediaType:i];
  }
}

- (void)setWaitingSubstate:(unint64_t)a3 forMediaType:(unint64_t)a4
{
  v7 = [objc_opt_class() assetTypeForMediaType:a4];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [(NSMutableDictionary *)self->_waitingSubstatesDict setObject:v6 forKeyedSubscript:v7];
}

- (void)setWaitingSubstateForAllMediaTypes:(unint64_t)a3
{
  for (i = 1; i != 4; ++i)
  {
    [(NMSSyncStatesDict *)self setWaitingSubstate:a3 forMediaType:i];
  }
}

- (unint64_t)syncStateForMediaType:(unint64_t)a3
{
  v4 = [objc_opt_class() assetTypeForMediaType:a3];
  v5 = [(NSMutableDictionary *)self->_syncStatesDict objectForKeyedSubscript:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 unsignedIntegerValue];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)waitingSubstateForMediaType:(unint64_t)a3
{
  v4 = [objc_opt_class() assetTypeForMediaType:a3];
  v5 = [(NSMutableDictionary *)self->_waitingSubstatesDict objectForKeyedSubscript:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 unsignedIntegerValue];
  }

  else
  {
    v7 = 0;
  }

  return v7;
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

+ (id)assetTypeForMediaType:(unint64_t)a3
{
  if (a3 > 3)
  {
    return 0;
  }

  else
  {
    return off_27993ED30[a3];
  }
}

+ (unint64_t)mediaTypeForAssetType:(id)a3
{
  v3 = a3;
  if ([v3 length])
  {
    if ([v3 isEqualToString:@"Music"])
    {
      v4 = 1;
    }

    else if ([v3 isEqualToString:@"Podcast"])
    {
      v4 = 2;
    }

    else if ([v3 isEqualToString:@"Audiobook"])
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (v5)
  {
    v6 = [(NSMutableDictionary *)self->_syncStatesDict mutableCopyWithZone:a3];
    v7 = v5[1];
    v5[1] = v6;

    v8 = [(NSMutableDictionary *)self->_waitingSubstatesDict mutableCopyWithZone:a3];
    v9 = v5[2];
    v5[2] = v8;
  }

  return v5;
}

@end