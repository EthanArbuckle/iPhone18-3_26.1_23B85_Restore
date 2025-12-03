@interface CMSPlayerContext
+ (id)instanceFromCMSCoded:(id)coded;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualContext:(id)context;
- (CMSPlayerContext)playerContextWithUpdatedOffset:(int64_t)offset;
- (CMSPlayerContext)playerContextWithUpdatedSpeed:(float)speed;
- (CMSPlayerContext)playerContextWithUpdatedSpeed:(float)speed offset:(int64_t)offset;
- (NSString)description;
- (id)cmsCoded;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initForActivity:(id)activity queue:(id)queue content:(id)content speed:(float)speed offset:(int64_t)offset;
- (unint64_t)hash;
@end

@implementation CMSPlayerContext

- (id)initForActivity:(id)activity queue:(id)queue content:(id)content speed:(float)speed offset:(int64_t)offset
{
  activityCopy = activity;
  queueCopy = queue;
  contentCopy = content;
  v19.receiver = self;
  v19.super_class = CMSPlayerContext;
  v16 = [(CMSPlayerContext *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_activityIdentifier, activity);
    objc_storeStrong(&v17->_queueIdentifier, queue);
    objc_storeStrong(&v17->_contentIdentifier, content);
    v17->_playbackSpeed = speed;
    v17->_offsetInMillis = offset;
  }

  return v17;
}

- (CMSPlayerContext)playerContextWithUpdatedSpeed:(float)speed
{
  v5 = [CMSPlayerContext alloc];
  *&v6 = speed;
  v7 = [(CMSPlayerContext *)v5 initForActivity:self->_activityIdentifier queue:self->_queueIdentifier content:self->_contentIdentifier speed:self->_offsetInMillis offset:v6];

  return v7;
}

- (CMSPlayerContext)playerContextWithUpdatedSpeed:(float)speed offset:(int64_t)offset
{
  v7 = [CMSPlayerContext alloc];
  *&v8 = speed;
  v9 = [(CMSPlayerContext *)v7 initForActivity:self->_activityIdentifier queue:self->_queueIdentifier content:self->_contentIdentifier speed:offset offset:v8];

  return v9;
}

- (CMSPlayerContext)playerContextWithUpdatedOffset:(int64_t)offset
{
  v5 = [CMSPlayerContext alloc];
  *&v6 = self->_playbackSpeed;
  v7 = [(CMSPlayerContext *)v5 initForActivity:self->_activityIdentifier queue:self->_queueIdentifier content:self->_contentIdentifier speed:offset offset:v6];

  return v7;
}

- (BOOL)isEqualContext:(id)context
{
  contextCopy = context;
  activityIdentifier = [contextCopy activityIdentifier];
  v6 = activityIdentifier;
  if (activityIdentifier | self->_activityIdentifier && ![activityIdentifier isEqualToString:?])
  {
    v13 = 0;
  }

  else
  {
    contentIdentifier = [contextCopy contentIdentifier];
    v8 = contentIdentifier;
    if (self->_contentIdentifier)
    {
      contentIdentifier = self->_contentIdentifier;
    }

    else
    {
      contentIdentifier = &stru_2856A7BB0;
    }

    if ([contentIdentifier isEqualToString:contentIdentifier])
    {
      queueIdentifier = [contextCopy queueIdentifier];
      v11 = queueIdentifier;
      if (self->_queueIdentifier)
      {
        queueIdentifier = self->_queueIdentifier;
      }

      else
      {
        queueIdentifier = &stru_2856A7BB0;
      }

      v13 = [queueIdentifier isEqualToString:queueIdentifier];
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  activityIdentifier = [equalCopy activityIdentifier];
  v6 = activityIdentifier;
  if (activityIdentifier | self->_activityIdentifier && ![activityIdentifier isEqualToString:?])
  {
    v14 = 0;
  }

  else
  {
    contentIdentifier = [equalCopy contentIdentifier];
    v8 = contentIdentifier;
    if (self->_contentIdentifier)
    {
      contentIdentifier = self->_contentIdentifier;
    }

    else
    {
      contentIdentifier = &stru_2856A7BB0;
    }

    if ([contentIdentifier isEqualToString:contentIdentifier])
    {
      queueIdentifier = [equalCopy queueIdentifier];
      v11 = queueIdentifier;
      if (self->_queueIdentifier)
      {
        queueIdentifier = self->_queueIdentifier;
      }

      else
      {
        queueIdentifier = &stru_2856A7BB0;
      }

      v14 = [queueIdentifier isEqualToString:queueIdentifier] && (objc_msgSend(equalCopy, "playbackSpeed"), vabds_f32(v13, self->_playbackSpeed) < 0.000001) && objc_msgSend(equalCopy, "offsetInMillis") == self->_offsetInMillis;
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

+ (id)instanceFromCMSCoded:(id)coded
{
  v4 = cmsSafeDictionary(coded);
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
      v13 = [self alloc];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CMSPlayerContext allocWithZone:zone];
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
  cmsCoded = [(CMSPlayerContext *)self cmsCoded];
  v5 = [cmsCoded description];
  v6 = [v3 stringWithFormat:@"CMSPlayerContext @%p:%@", self, v5];

  return v6;
}

@end