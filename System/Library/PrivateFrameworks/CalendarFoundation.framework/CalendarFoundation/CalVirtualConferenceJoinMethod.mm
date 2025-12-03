@interface CalVirtualConferenceJoinMethod
- (BOOL)isEqual:(id)equal;
- (CalVirtualConferenceJoinMethod)initWithTitle:(id)title URL:(id)l isBroadcast:(BOOL)broadcast;
- (id)description;
@end

@implementation CalVirtualConferenceJoinMethod

- (CalVirtualConferenceJoinMethod)initWithTitle:(id)title URL:(id)l isBroadcast:(BOOL)broadcast
{
  titleCopy = title;
  lCopy = l;
  v14.receiver = self;
  v14.super_class = CalVirtualConferenceJoinMethod;
  v11 = [(CalVirtualConferenceJoinMethod *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_title, title);
    objc_storeStrong(&v12->_URL, l);
    v12->_isBroadcast = broadcast;
  }

  return v12;
}

- (id)description
{
  v3 = [CalDescriptionBuilder alloc];
  v8.receiver = self;
  v8.super_class = CalVirtualConferenceJoinMethod;
  v4 = [(CalVirtualConferenceJoinMethod *)&v8 description];
  v5 = [(CalDescriptionBuilder *)v3 initWithSuperclassDescription:v4];

  [(CalDescriptionBuilder *)v5 setKey:@"title" withString:self->_title];
  [(CalDescriptionBuilder *)v5 setKey:@"URL" withObject:self->_URL];
  [(CalDescriptionBuilder *)v5 setKey:@"isBroadcast" withBoolean:self->_isBroadcast];
  build = [(CalDescriptionBuilder *)v5 build];

  return build;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      title = self->_title;
      title = [(CalVirtualConferenceJoinMethod *)v5 title];
      if (CalEqualStrings(title, title))
      {
        URL = self->_URL;
        v9 = [(CalVirtualConferenceJoinMethod *)v5 URL];
        if (CalEqualObjects(URL, v9))
        {
          isBroadcast = self->_isBroadcast;
          v11 = isBroadcast == [(CalVirtualConferenceJoinMethod *)v5 isBroadcast];
        }

        else
        {
          v11 = 0;
        }
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

@end