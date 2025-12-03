@interface CHSTimelineEntryRelevanceBox
- (BOOL)isEqual:(id)equal;
- (CHSTimelineEntryRelevanceBox)init;
- (CHSTimelineEntryRelevanceBox)initWithCoder:(id)coder;
- (CHSTimelineEntryRelevanceBox)initWithEntries:(id)entries;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)prepareForEncoding;
@end

@implementation CHSTimelineEntryRelevanceBox

- (CHSTimelineEntryRelevanceBox)init
{
  v3 = objc_opt_new();
  v4 = [(CHSTimelineEntryRelevanceBox *)self initWithEntries:v3];

  return v4;
}

- (CHSTimelineEntryRelevanceBox)initWithEntries:(id)entries
{
  entriesCopy = entries;
  v9.receiver = self;
  v9.super_class = CHSTimelineEntryRelevanceBox;
  v6 = [(CHSTimelineEntryRelevanceBox *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_timelineRelevanceEntries, entries);
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [equalCopy[2] isEqualToDictionary:self->_timelineRelevanceEntries];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)prepareForEncoding
{
  bs_secureEncoded = [(CHSTimelineEntryRelevanceBox *)self bs_secureEncoded];
  archivedData = self->_archivedData;
  self->_archivedData = bs_secureEncoded;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = [(NSDictionary *)self->_timelineRelevanceEntries copy];
  v6 = v4[2];
  v4[2] = v5;

  return v4;
}

- (CHSTimelineEntryRelevanceBox)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = CHSTimelineEntryRelevanceBox;
  v5 = [(CHSTimelineEntryRelevanceBox *)&v14 init];
  if (v5)
  {
    if ([coderCopy containsValueForKey:@"data"])
    {
      v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"data"];
      p_isa = [MEMORY[0x1E69E58C0] bs_secureObjectFromData:v6 ofClass:objc_opt_class()];
      objc_storeStrong(&v5->_timelineRelevanceEntries, p_isa[2]);
    }

    else
    {
      v8 = MEMORY[0x1E695DFD8];
      v9 = objc_opt_class();
      v10 = objc_opt_class();
      v11 = objc_opt_class();
      v6 = [v8 setWithObjects:{v9, v10, v11, objc_opt_class(), 0}];
      v12 = [coderCopy decodeObjectOfClasses:v6 forKey:@"timelineRelevanceEntries"];
      p_isa = &v5->_timelineRelevanceEntries->super.isa;
      v5->_timelineRelevanceEntries = v12;
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  archivedData = self->_archivedData;
  v6 = coderCopy;
  if (archivedData)
  {
    [coderCopy encodeObject:archivedData forKey:@"data"];
  }

  else
  {
    [coderCopy encodeObject:self->_timelineRelevanceEntries forKey:@"timelineRelevanceEntries"];
  }
}

@end