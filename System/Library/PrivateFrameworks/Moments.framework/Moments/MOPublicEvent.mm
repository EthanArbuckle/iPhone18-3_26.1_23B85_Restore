@interface MOPublicEvent
- (MOPublicEvent)initWithCoder:(id)coder;
- (MOPublicEvent)initWithEventDictionary:(id)dictionary;
- (MOPublicEvent)initWithName:(id)name performers:(id)performers venue:(id)venue;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MOPublicEvent

- (MOPublicEvent)initWithName:(id)name performers:(id)performers venue:(id)venue
{
  nameCopy = name;
  performersCopy = performers;
  venueCopy = venue;
  v19.receiver = self;
  v19.super_class = MOPublicEvent;
  v11 = [(MOPublicEvent *)&v19 init];
  if (v11)
  {
    v12 = [nameCopy copy];
    name = v11->_name;
    v11->_name = v12;

    v14 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:performersCopy copyItems:1];
    performers = v11->_performers;
    v11->_performers = v14;

    v16 = [venueCopy copy];
    venue = v11->_venue;
    v11->_venue = v16;
  }

  return v11;
}

- (MOPublicEvent)initWithEventDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKey:@"name"];
  v7 = [dictionaryCopy objectForKey:@"performers"];
  v8 = [dictionaryCopy objectForKey:@"venue"];

  if (v6)
  {
    self = [(MOPublicEvent *)self initWithName:v6 performers:v7 venue:v8];
    selfCopy = self;
  }

  else
  {
    v10 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [MOPublicEvent initWithEventDictionary:v10];
    }

    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MOEventExtendedAtrributes.m" lineNumber:47 description:@"Invalid parameter not satisfying: name"];

    selfCopy = 0;
  }

  return selfCopy;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  name = [(MOPublicEvent *)self name];
  uTF8String = [name UTF8String];
  performers = [(MOPublicEvent *)self performers];
  venue = [(MOPublicEvent *)self venue];
  v8 = [v3 stringWithFormat:@"<MOPublicEvent name, %s, performers, %@, venue, %@, >", uTF8String, performers, venue];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  name = self->_name;
  coderCopy = coder;
  [coderCopy encodeObject:name forKey:@"name"];
  [coderCopy encodeObject:self->_performers forKey:@"performers"];
  [coderCopy encodeObject:self->_venue forKey:@"venue"];
}

- (MOPublicEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v6 = MEMORY[0x277CBEB98];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"performers"];

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"venue"];

  v11 = [(MOPublicEvent *)self initWithName:v5 performers:v9 venue:v10];
  return v11;
}

@end