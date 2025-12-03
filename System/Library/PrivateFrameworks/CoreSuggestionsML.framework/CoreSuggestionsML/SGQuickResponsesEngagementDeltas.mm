@interface SGQuickResponsesEngagementDeltas
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToQuickResponsesEngagementDeltas:(id)deltas;
- (SGQuickResponsesEngagementDeltas)initWithCoder:(id)coder;
- (SGQuickResponsesEngagementDeltas)initWithLangResponse:(id)response displayed:(int)displayed selected:(int)selected matched:(int)matched;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SGQuickResponsesEngagementDeltas

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(SGQuickResponsesEngagementDeltas *)self isEqualToQuickResponsesEngagementDeltas:v5];
  }

  return v6;
}

- (BOOL)isEqualToQuickResponsesEngagementDeltas:(id)deltas
{
  deltasCopy = deltas;
  v5 = self->_response;
  v6 = v5;
  if (v5 == deltasCopy[3])
  {
  }

  else
  {
    v7 = [(NSString *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
LABEL_12:
      v14 = 0;
      goto LABEL_13;
    }
  }

  v8 = self->_lang;
  v9 = v8;
  if (v8 == deltasCopy[4])
  {
  }

  else
  {
    v10 = [(NSString *)v8 isEqual:?];

    if ((v10 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  displayed = self->_displayed;
  if (displayed != [deltasCopy displayed])
  {
    goto LABEL_12;
  }

  selected = self->_selected;
  if (selected != [deltasCopy selected])
  {
    goto LABEL_12;
  }

  matched = self->_matched;
  v14 = matched == [deltasCopy matched];
LABEL_13:

  return v14;
}

- (SGQuickResponsesEngagementDeltas)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = SGQuickResponsesEngagementDeltas;
  v5 = [(SGQuickResponsesEngagementDeltas *)&v13 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"response"];
    response = v5->_response;
    v5->_response = v7;

    v9 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"lang"];
    lang = v5->_lang;
    v5->_lang = v10;

    v5->_displayed = [coderCopy decodeInt32ForKey:@"displayed"];
    v5->_selected = [coderCopy decodeInt32ForKey:@"selected"];
    v5->_matched = [coderCopy decodeInt32ForKey:@"matched"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  response = self->_response;
  coderCopy = coder;
  [coderCopy encodeObject:response forKey:@"response"];
  [coderCopy encodeObject:self->_lang forKey:@"lang"];
  [coderCopy encodeInt32:self->_displayed forKey:@"displayed"];
  [coderCopy encodeInt32:self->_selected forKey:@"selected"];
  [coderCopy encodeInt32:self->_matched forKey:@"matched"];
}

- (SGQuickResponsesEngagementDeltas)initWithLangResponse:(id)response displayed:(int)displayed selected:(int)selected matched:(int)matched
{
  responseCopy = response;
  if (responseCopy)
  {
    if ((displayed & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGQuickResponsesStore.m" lineNumber:1336 description:{@"Invalid parameter not satisfying: %@", @"langResponse"}];

    if ((displayed & 0x80000000) == 0)
    {
LABEL_3:
      if ((selected & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

LABEL_12:
      currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"SGQuickResponsesStore.m" lineNumber:1338 description:{@"Invalid parameter not satisfying: %@", @"selected >= 0"}];

      if ((matched & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_13;
    }
  }

  currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"SGQuickResponsesStore.m" lineNumber:1337 description:{@"Invalid parameter not satisfying: %@", @"displayed >= 0"}];

  if (selected < 0)
  {
    goto LABEL_12;
  }

LABEL_4:
  if ((matched & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

LABEL_13:
  currentHandler4 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler4 handleFailureInMethod:a2 object:self file:@"SGQuickResponsesStore.m" lineNumber:1339 description:{@"Invalid parameter not satisfying: %@", @"matched >= 0"}];

LABEL_5:
  v23.receiver = self;
  v23.super_class = SGQuickResponsesEngagementDeltas;
  v12 = [(SGQuickResponsesEngagementDeltas *)&v23 init];
  if (v12)
  {
    v13 = [responseCopy componentsSeparatedByString:@"|"];
    v14 = [v13 count];
    v15 = [v13 objectAtIndexedSubscript:0];
    if (v14 != 1)
    {
      lang = v12->_lang;
      v12->_lang = v15;

      v15 = [v13 objectAtIndexedSubscript:1];
    }

    response = v12->_response;
    v12->_response = v15;

    v12->_displayed = displayed;
    v12->_selected = selected;
    v12->_matched = matched;
  }

  return v12;
}

@end