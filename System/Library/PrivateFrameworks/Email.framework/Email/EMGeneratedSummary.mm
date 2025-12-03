@interface EMGeneratedSummary
+ (int64_t)consideredUrgentHourLimit;
- (BOOL)isEqual:(id)equal;
- (BOOL)isUrgentForDate:(id)date;
- (EMGeneratedSummary)initWithCoder:(id)coder;
- (EMGeneratedSummary)initWithTopLine:(id)line synopsis:(id)synopsis urgent:(BOOL)urgent messageItemID:(id)d;
- (NSString)debugDescription;
- (NSString)ef_publicDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation EMGeneratedSummary

+ (int64_t)consideredUrgentHourLimit
{
  if (consideredUrgentHourLimit_onceToken != -1)
  {
    +[EMGeneratedSummary consideredUrgentHourLimit];
  }

  return consideredUrgentHourLimit_urgentHourLimit;
}

void __47__EMGeneratedSummary_consideredUrgentHourLimit__block_invoke()
{
  v3 = [MEMORY[0x1E695E000] em_userDefaults];
  v0 = [v3 valueForKey:@"MessageConsideredUrgentHourLimit"];
  v1 = v0;
  if (v0)
  {
    v2 = [v0 integerValue];
  }

  else
  {
    v2 = 72;
  }

  consideredUrgentHourLimit_urgentHourLimit = v2;
}

- (EMGeneratedSummary)initWithTopLine:(id)line synopsis:(id)synopsis urgent:(BOOL)urgent messageItemID:(id)d
{
  lineCopy = line;
  synopsisCopy = synopsis;
  dCopy = d;
  v17.receiver = self;
  v17.super_class = EMGeneratedSummary;
  v14 = [(EMGeneratedSummary *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_topLine, line);
    objc_storeStrong(&v15->_synopsis, synopsis);
    v15->_urgent = urgent;
    objc_storeStrong(&v15->_messageItemID, d);
  }

  return v15;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  topLine = [(EMGeneratedSummary *)self topLine];
  synopsis = [(EMGeneratedSummary *)self synopsis];
  urgent = [(EMGeneratedSummary *)self urgent];
  messageItemID = [(EMGeneratedSummary *)self messageItemID];
  v10 = [v3 stringWithFormat:@"<%@: %p>\n\ttopLine:%@\n\tsynopsis:%@\n\turgent: %d\n\tmessageItemID: %@", v5, self, topLine, synopsis, urgent, messageItemID];

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      topLine = [(EMGeneratedSummary *)self topLine];
      topLine2 = [(EMGeneratedSummary *)v5 topLine];
      if (EFObjectsAreEqual())
      {
        synopsis = [(EMGeneratedSummary *)self synopsis];
        synopsis2 = [(EMGeneratedSummary *)v5 synopsis];
        if (EFObjectsAreEqual() && (v10 = [(EMGeneratedSummary *)self urgent], v10 == [(EMGeneratedSummary *)v5 urgent]))
        {
          messageItemID = [(EMGeneratedSummary *)self messageItemID];
          messageItemID2 = [(EMGeneratedSummary *)v5 messageItemID];
          v11 = EFObjectsAreEqual();
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

- (BOOL)isUrgentForDate:(id)date
{
  dateCopy = date;
  v5 = [MEMORY[0x1E695DF00] ef_dateHoursAgo:{+[EMGeneratedSummary consideredUrgentHourLimit](EMGeneratedSummary, "consideredUrgentHourLimit")}];
  if ([(EMGeneratedSummary *)self urgent])
  {
    v6 = [dateCopy ef_isLaterThanDate:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)hash
{
  topLine = [(EMGeneratedSummary *)self topLine];

  if (topLine)
  {
    topLine2 = [(EMGeneratedSummary *)self topLine];
    v5 = [topLine2 hash] + 177573;
  }

  else
  {
    v5 = 5381;
  }

  synopsis = [(EMGeneratedSummary *)self synopsis];

  if (synopsis)
  {
    synopsis2 = [(EMGeneratedSummary *)self synopsis];
    v5 = [synopsis2 hash] + 33 * v5;
  }

  v8 = 33 * v5 + [(EMGeneratedSummary *)self urgent];
  messageItemID = [(EMGeneratedSummary *)self messageItemID];

  if (messageItemID)
  {
    messageItemID2 = [(EMGeneratedSummary *)self messageItemID];
    v8 = [messageItemID2 hash] + 33 * v8;
  }

  return v8;
}

- (NSString)ef_publicDescription
{
  v3 = MEMORY[0x1E699B858];
  topLine = [(EMGeneratedSummary *)self topLine];
  string = [topLine string];
  v6 = [v3 ec_partiallyRedactedStringForSubjectOrSummary:string];

  v7 = MEMORY[0x1E696AEC0];
  urgent = [(EMGeneratedSummary *)self urgent];
  messageItemID = [(EMGeneratedSummary *)self messageItemID];
  v10 = [v7 stringWithFormat:@"t:%@, u:%d, m:%@", v6, urgent, messageItemID];

  return v10;
}

- (EMGeneratedSummary)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_topLine"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_synopsis"];
  v7 = [coderCopy decodeBoolForKey:@"EFPropertyKey_urgent"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_messageItemID"];
  v9 = [(EMGeneratedSummary *)self initWithTopLine:v5 synopsis:v6 urgent:v7 messageItemID:v8];

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  topLine = [(EMGeneratedSummary *)self topLine];
  [coderCopy encodeObject:topLine forKey:@"EFPropertyKey_topLine"];

  synopsis = [(EMGeneratedSummary *)self synopsis];
  [coderCopy encodeObject:synopsis forKey:@"EFPropertyKey_synopsis"];

  [coderCopy encodeBool:-[EMGeneratedSummary urgent](self forKey:{"urgent"), @"EFPropertyKey_urgent"}];
  messageItemID = [(EMGeneratedSummary *)self messageItemID];
  [coderCopy encodeObject:messageItemID forKey:@"EFPropertyKey_messageItemID"];
}

@end