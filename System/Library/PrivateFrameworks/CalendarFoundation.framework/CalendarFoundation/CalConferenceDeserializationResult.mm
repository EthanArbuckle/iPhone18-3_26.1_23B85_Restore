@interface CalConferenceDeserializationResult
- (BOOL)isEqual:(id)equal;
- (CalConferenceDeserializationResult)initWithConference:(id)conference range:(_NSRange)range blockTitle:(id)title;
- (_NSRange)range;
- (id)description;
@end

@implementation CalConferenceDeserializationResult

- (CalConferenceDeserializationResult)initWithConference:(id)conference range:(_NSRange)range blockTitle:(id)title
{
  length = range.length;
  location = range.location;
  conferenceCopy = conference;
  titleCopy = title;
  v15.receiver = self;
  v15.super_class = CalConferenceDeserializationResult;
  v12 = [(CalConferenceDeserializationResult *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_conference, conference);
    v13->_range.location = location;
    v13->_range.length = length;
    objc_storeStrong(&v13->_blockTitle, title);
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
  build = [(CalDescriptionBuilder *)v5 build];

  return build;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      conference = self->_conference;
      conference = [(CalConferenceDeserializationResult *)v5 conference];
      if (CalEqualObjects(conference, conference))
      {
        blockTitle = self->_blockTitle;
        blockTitle = [(CalConferenceDeserializationResult *)v5 blockTitle];
        if (CalEqualStrings(blockTitle, blockTitle))
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