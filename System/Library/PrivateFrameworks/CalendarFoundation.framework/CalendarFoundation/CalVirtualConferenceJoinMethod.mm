@interface CalVirtualConferenceJoinMethod
- (BOOL)isEqual:(id)a3;
- (CalVirtualConferenceJoinMethod)initWithTitle:(id)a3 URL:(id)a4 isBroadcast:(BOOL)a5;
- (id)description;
@end

@implementation CalVirtualConferenceJoinMethod

- (CalVirtualConferenceJoinMethod)initWithTitle:(id)a3 URL:(id)a4 isBroadcast:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = CalVirtualConferenceJoinMethod;
  v11 = [(CalVirtualConferenceJoinMethod *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_title, a3);
    objc_storeStrong(&v12->_URL, a4);
    v12->_isBroadcast = a5;
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
  v6 = [(CalDescriptionBuilder *)v5 build];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      title = self->_title;
      v7 = [(CalVirtualConferenceJoinMethod *)v5 title];
      if (CalEqualStrings(title, v7))
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