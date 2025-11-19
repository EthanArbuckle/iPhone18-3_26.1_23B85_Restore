@interface CalConferenceDeserializationResult
- (BOOL)isEqual:(id)a3;
- (CalConferenceDeserializationResult)initWithConference:(id)a3 range:(_NSRange)a4 blockTitle:(id)a5;
- (_NSRange)range;
- (id)description;
@end

@implementation CalConferenceDeserializationResult

- (CalConferenceDeserializationResult)initWithConference:(id)a3 range:(_NSRange)a4 blockTitle:(id)a5
{
  length = a4.length;
  location = a4.location;
  v10 = a3;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = CalConferenceDeserializationResult;
  v12 = [(CalConferenceDeserializationResult *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_conference, a3);
    v13->_range.location = location;
    v13->_range.length = length;
    objc_storeStrong(&v13->_blockTitle, a5);
  }

  return v13;
}

- (id)description
{
  v3 = [CalDescriptionBuilder alloc];
  v9.receiver = self;
  v9.super_class = CalConferenceDeserializationResult;
  v4 = [(CalConferenceDeserializationResult *)&v9 description];
  v5 = [(CalDescriptionBuilder *)v3 initWithSuperclassDescription:v4];

  [(CalDescriptionBuilder *)v5 setKey:@"conference" withObject:self->_conference];
  v6 = NSStringFromRange(self->_range);
  [(CalDescriptionBuilder *)v5 setKey:@"range" withString:v6];

  [(CalDescriptionBuilder *)v5 setKey:@"blockTitle" withString:self->_blockTitle];
  v7 = [(CalDescriptionBuilder *)v5 build];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      conference = self->_conference;
      v7 = [(CalConferenceDeserializationResult *)v5 conference];
      if (CalEqualObjects(conference, v7))
      {
        blockTitle = self->_blockTitle;
        v9 = [(CalConferenceDeserializationResult *)v5 blockTitle];
        if (CalEqualStrings(blockTitle, v9))
        {
          v12 = self->_range.location == [(CalConferenceDeserializationResult *)v5 range]&& self->_range.length == v10;
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (_NSRange)range
{
  length = self->_range.length;
  location = self->_range.location;
  result.length = length;
  result.location = location;
  return result;
}

@end