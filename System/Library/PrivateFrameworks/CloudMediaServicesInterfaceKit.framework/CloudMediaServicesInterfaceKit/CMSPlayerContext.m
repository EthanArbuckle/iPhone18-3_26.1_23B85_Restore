@interface CMSPlayerContext
+ (id)instanceFromCMSCoded:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualContext:(id)a3;
- (CMSPlayerContext)playerContextWithUpdatedOffset:(int64_t)a3;
- (CMSPlayerContext)playerContextWithUpdatedSpeed:(float)a3;
- (CMSPlayerContext)playerContextWithUpdatedSpeed:(float)a3 offset:(int64_t)a4;
- (NSString)description;
- (id)cmsCoded;
- (id)copyWithZone:(_NSZone *)a3;
- (id)initForActivity:(id)a3 queue:(id)a4 content:(id)a5 speed:(float)a6 offset:(int64_t)a7;
- (unint64_t)hash;
@end

@implementation CMSPlayerContext

- (id)initForActivity:(id)a3 queue:(id)a4 content:(id)a5 speed:(float)a6 offset:(int64_t)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v19.receiver = self;
  v19.super_class = CMSPlayerContext;
  v16 = [(CMSPlayerContext *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_activityIdentifier, a3);
    objc_storeStrong(&v17->_queueIdentifier, a4);
    objc_storeStrong(&v17->_contentIdentifier, a5);
    v17->_playbackSpeed = a6;
    v17->_offsetInMillis = a7;
  }

  return v17;
}

- (CMSPlayerContext)playerContextWithUpdatedSpeed:(float)a3
{
  v5 = [CMSPlayerContext alloc];
  *&v6 = a3;
  v7 = [(CMSPlayerContext *)v5 initForActivity:self->_activityIdentifier queue:self->_queueIdentifier content:self->_contentIdentifier speed:self->_offsetInMillis offset:v6];

  return v7;
}

- (CMSPlayerContext)playerContextWithUpdatedSpeed:(float)a3 offset:(int64_t)a4
{
  v7 = [CMSPlayerContext alloc];
  *&v8 = a3;
  v9 = [(CMSPlayerContext *)v7 initForActivity:self->_activityIdentifier queue:self->_queueIdentifier content:self->_contentIdentifier speed:a4 offset:v8];

  return v9;
}

- (CMSPlayerContext)playerContextWithUpdatedOffset:(int64_t)a3
{
  v5 = [CMSPlayerContext alloc];
  *&v6 = self->_playbackSpeed;
  v7 = [(CMSPlayerContext *)v5 initForActivity:self->_activityIdentifier queue:self->_queueIdentifier content:self->_contentIdentifier speed:a3 offset:v6];

  return v7;
}

- (BOOL)isEqualContext:(id)a3
{
  v4 = a3;
  v5 = [v4 activityIdentifier];
  v6 = v5;
  if (v5 | self->_activityIdentifier && ![v5 isEqualToString:?])
  {
    v13 = 0;
  }

  else
  {
    v7 = [v4 contentIdentifier];
    v8 = v7;
    if (self->_contentIdentifier)
    {
      contentIdentifier = self->_contentIdentifier;
    }

    else
    {
      contentIdentifier = &stru_2856A7BB0;
    }

    if ([v7 isEqualToString:contentIdentifier])
    {
      v10 = [v4 queueIdentifier];
      v11 = v10;
      if (self->_queueIdentifier)
      {
        queueIdentifier = self->_queueIdentifier;
      }

      else
      {
        queueIdentifier = &stru_2856A7BB0;
      }

      v13 = [v10 isEqualToString:queueIdentifier];
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [v4 activityIdentifier];
  v6 = v5;
  if (v5 | self->_activityIdentifier && ![v5 isEqualToString:?])
  {
    v14 = 0;
  }

  else
  {
    v7 = [v4 contentIdentifier];
    v8 = v7;
    if (self->_contentIdentifier)
    {
      contentIdentifier = self->_contentIdentifier;
    }

    else
    {
      contentIdentifier = &stru_2856A7BB0;
    }

    if ([v7 isEqualToString:contentIdentifier])
    {
      v10 = [v4 queueIdentifier];
      v11 = v10;
      if (self->_queueIdentifier)
      {
        queueIdentifier = self->_queueIdentifier;
      }

      else
      {
        queueIdentifier = &stru_2856A7BB0;
      }

      v14 = [v10 isEqualToString:queueIdentifier] && (objc_msgSend(v4, "playbackSpeed"), vabds_f32(v13, self->_playbackSpeed) < 0.000001) && objc_msgSend(v4, "offsetInMillis") == self->_offsetInMillis;
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_activityIdentifier hash];
  v4 = [(NSString *)self->_queueIdentifier hash]+ v3;
  return v4 + [(NSString *)self->_contentIdentifier hash]+ self->_offsetInMillis + (fabsf(self->_playbackSpeed) * 1000000.0);
}

- (id)cmsCoded
{
  v3 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:3];
  [v3 cmsSetOptionalObject:self->_activityIdentifier forKey:@"activityIdentifier"];
  [v3 cmsSetOptionalObject:self->_queueIdentifier forKey:@"queueIdentifier"];
  [v3 cmsSetOptionalObject:self->_contentIdentifier forKey:@"contentIdentifier"];
  if (self->_playbackSpeed != 1.0)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithFloat:?];
    [v3 setObject:v4 forKey:@"playbackSpeed"];
  }

  if ([(CMSPlayerContext *)self offsetIsValid])
  {
    v5 = [MEMORY[0x277CCABB0] numberWithInteger:self->_offsetInMillis];
    [v3 setObject:v5 forKey:@"offsetInMillis"];
  }

  return v3;
}

+ (id)instanceFromCMSCoded:(id)a3
{
  v4 = cmsSafeDictionary(a3);
  v5 = v4;
  if (v4)
  {
    v6 = [v4 cmsOptionalStringForKey:@"contentIdentifier"];
    if (v6)
    {
      v7 = [v5 cmsOptionalStringForKey:@"queueIdentifier"];
      if (v7)
      {
        v8 = v7;
      }

      else
      {
        v8 = &stru_2856A7BB0;
      }

      v9 = [v5 cmsOptionalStringForKey:@"activityIdentifier"];
      [v5 cmsDoubleForKey:@"playbackSpeed" withDefault:1.0];
      v11 = v10;
      v12 = [v5 cmsUnsignedForKey:@"offsetInMillis" withDefault:0x8000000000000000];
      v13 = [a1 alloc];
      *&v14 = v11;
      v15 = [v13 initForActivity:v9 queue:v8 content:v6 speed:v12 offset:v14];
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CMSPlayerContext allocWithZone:a3];
  activityIdentifier = self->_activityIdentifier;
  queueIdentifier = self->_queueIdentifier;
  *&v7 = self->_playbackSpeed;
  contentIdentifier = self->_contentIdentifier;
  offsetInMillis = self->_offsetInMillis;

  return [(CMSPlayerContext *)v4 initForActivity:activityIdentifier queue:queueIdentifier content:contentIdentifier speed:offsetInMillis offset:v7];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(CMSPlayerContext *)self cmsCoded];
  v5 = [v4 description];
  v6 = [v3 stringWithFormat:@"CMSPlayerContext @%p:%@", self, v5];

  return v6;
}

@end