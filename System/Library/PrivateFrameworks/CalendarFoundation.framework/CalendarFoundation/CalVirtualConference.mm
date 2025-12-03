@interface CalVirtualConference
- (BOOL)isEqual:(id)equal;
- (CalVirtualConference)initWithTitle:(id)title joinMethods:(id)methods conferenceDetails:(id)details source:(unint64_t)source isWritable:(BOOL)writable;
- (id)description;
@end

@implementation CalVirtualConference

- (CalVirtualConference)initWithTitle:(id)title joinMethods:(id)methods conferenceDetails:(id)details source:(unint64_t)source isWritable:(BOOL)writable
{
  titleCopy = title;
  methodsCopy = methods;
  detailsCopy = details;
  v19.receiver = self;
  v19.super_class = CalVirtualConference;
  v16 = [(CalVirtualConference *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_title, title);
    objc_storeStrong(&v17->_joinMethods, methods);
    objc_storeStrong(&v17->_conferenceDetails, details);
    v17->_source = source;
    v17->_isWritable = writable;
  }

  return v17;
}

- (id)description
{
  v3 = [CalDescriptionBuilder alloc];
  v8.receiver = self;
  v8.super_class = CalVirtualConference;
  v4 = [(CalVirtualConference *)&v8 description];
  v5 = [(CalDescriptionBuilder *)v3 initWithSuperclassDescription:v4];

  [(CalDescriptionBuilder *)v5 setKey:@"title" withString:self->_title];
  [(CalDescriptionBuilder *)v5 setKey:@"joinMethods" withArray:self->_joinMethods];
  [(CalDescriptionBuilder *)v5 setKey:@"conferenceDetails" withString:self->_conferenceDetails];
  self->_source;
  [CalDescriptionBuilder setKey:v5 withEnumNumericalValue:"setKey:withEnumNumericalValue:andStringValue:" andStringValue:@"source"];
  [(CalDescriptionBuilder *)v5 setKey:@"isWritable" withBoolean:self->_isWritable];
  build = [(CalDescriptionBuilder *)v5 build];

  return build;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      title = self->_title;
      title = [(CalVirtualConference *)v5 title];
      if (CalEqualStrings(title, title))
      {
        joinMethods = self->_joinMethods;
        joinMethods = [(CalVirtualConference *)v5 joinMethods];
        if (CalEqualObjects(joinMethods, joinMethods))
        {
          conferenceDetails = self->_conferenceDetails;
          conferenceDetails = [(CalVirtualConference *)v5 conferenceDetails];
          if (CalEqualStrings(conferenceDetails, conferenceDetails) && (source = self->_source, source == [(CalVirtualConference *)v5 source]))
          {
            isWritable = self->_isWritable;
            v14 = isWritable == [(CalVirtualConference *)v5 isWritable];
          }

          else
          {
            v14 = 0;
          }
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

@end