@interface CHSTimelineEntryRelevanceBox
- (BOOL)isEqual:(id)a3;
- (CHSTimelineEntryRelevanceBox)init;
- (CHSTimelineEntryRelevanceBox)initWithCoder:(id)a3;
- (CHSTimelineEntryRelevanceBox)initWithEntries:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)prepareForEncoding;
@end

@implementation CHSTimelineEntryRelevanceBox

- (CHSTimelineEntryRelevanceBox)init
{
  v3 = objc_opt_new();
  v4 = [(CHSTimelineEntryRelevanceBox *)self initWithEntries:v3];

  return v4;
}

- (CHSTimelineEntryRelevanceBox)initWithEntries:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CHSTimelineEntryRelevanceBox;
  v6 = [(CHSTimelineEntryRelevanceBox *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_timelineRelevanceEntries, a3);
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4[2] isEqualToDictionary:self->_timelineRelevanceEntries];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)prepareForEncoding
{
  v3 = [(CHSTimelineEntryRelevanceBox *)self bs_secureEncoded];
  archivedData = self->_archivedData;
  self->_archivedData = v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(NSDictionary *)self->_timelineRelevanceEntries copy];
  v6 = v4[2];
  v4[2] = v5;

  return v4;
}

- (CHSTimelineEntryRelevanceBox)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = CHSTimelineEntryRelevanceBox;
  v5 = [(CHSTimelineEntryRelevanceBox *)&v14 init];
  if (v5)
  {
    if ([v4 containsValueForKey:@"data"])
    {
      v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"data"];
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
      v12 = [v4 decodeObjectOfClasses:v6 forKey:@"timelineRelevanceEntries"];
      p_isa = &v5->_timelineRelevanceEntries->super.isa;
      v5->_timelineRelevanceEntries = v12;
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  archivedData = self->_archivedData;
  v6 = v4;
  if (archivedData)
  {
    [v4 encodeObject:archivedData forKey:@"data"];
  }

  else
  {
    [v4 encodeObject:self->_timelineRelevanceEntries forKey:@"timelineRelevanceEntries"];
  }
}

@end