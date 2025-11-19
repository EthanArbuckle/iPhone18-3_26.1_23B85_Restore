@interface SGQuickResponsesEngagementDeltas
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToQuickResponsesEngagementDeltas:(id)a3;
- (SGQuickResponsesEngagementDeltas)initWithCoder:(id)a3;
- (SGQuickResponsesEngagementDeltas)initWithLangResponse:(id)a3 displayed:(int)a4 selected:(int)a5 matched:(int)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SGQuickResponsesEngagementDeltas

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(SGQuickResponsesEngagementDeltas *)self isEqualToQuickResponsesEngagementDeltas:v5];
  }

  return v6;
}

- (BOOL)isEqualToQuickResponsesEngagementDeltas:(id)a3
{
  v4 = a3;
  v5 = self->_response;
  v6 = v5;
  if (v5 == v4[3])
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
  if (v8 == v4[4])
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
  if (displayed != [v4 displayed])
  {
    goto LABEL_12;
  }

  selected = self->_selected;
  if (selected != [v4 selected])
  {
    goto LABEL_12;
  }

  matched = self->_matched;
  v14 = matched == [v4 matched];
LABEL_13:

  return v14;
}

- (SGQuickResponsesEngagementDeltas)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = SGQuickResponsesEngagementDeltas;
  v5 = [(SGQuickResponsesEngagementDeltas *)&v13 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"response"];
    response = v5->_response;
    v5->_response = v7;

    v9 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"lang"];
    lang = v5->_lang;
    v5->_lang = v10;

    v5->_displayed = [v4 decodeInt32ForKey:@"displayed"];
    v5->_selected = [v4 decodeInt32ForKey:@"selected"];
    v5->_matched = [v4 decodeInt32ForKey:@"matched"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  response = self->_response;
  v5 = a3;
  [v5 encodeObject:response forKey:@"response"];
  [v5 encodeObject:self->_lang forKey:@"lang"];
  [v5 encodeInt32:self->_displayed forKey:@"displayed"];
  [v5 encodeInt32:self->_selected forKey:@"selected"];
  [v5 encodeInt32:self->_matched forKey:@"matched"];
}

- (SGQuickResponsesEngagementDeltas)initWithLangResponse:(id)a3 displayed:(int)a4 selected:(int)a5 matched:(int)a6
{
  v11 = a3;
  if (v11)
  {
    if ((a4 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v19 = [MEMORY[0x277CCA890] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"SGQuickResponsesStore.m" lineNumber:1336 description:{@"Invalid parameter not satisfying: %@", @"langResponse"}];

    if ((a4 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a5 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

LABEL_12:
      v21 = [MEMORY[0x277CCA890] currentHandler];
      [v21 handleFailureInMethod:a2 object:self file:@"SGQuickResponsesStore.m" lineNumber:1338 description:{@"Invalid parameter not satisfying: %@", @"selected >= 0"}];

      if ((a6 & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_13;
    }
  }

  v20 = [MEMORY[0x277CCA890] currentHandler];
  [v20 handleFailureInMethod:a2 object:self file:@"SGQuickResponsesStore.m" lineNumber:1337 description:{@"Invalid parameter not satisfying: %@", @"displayed >= 0"}];

  if (a5 < 0)
  {
    goto LABEL_12;
  }

LABEL_4:
  if ((a6 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

LABEL_13:
  v22 = [MEMORY[0x277CCA890] currentHandler];
  [v22 handleFailureInMethod:a2 object:self file:@"SGQuickResponsesStore.m" lineNumber:1339 description:{@"Invalid parameter not satisfying: %@", @"matched >= 0"}];

LABEL_5:
  v23.receiver = self;
  v23.super_class = SGQuickResponsesEngagementDeltas;
  v12 = [(SGQuickResponsesEngagementDeltas *)&v23 init];
  if (v12)
  {
    v13 = [v11 componentsSeparatedByString:@"|"];
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

    v12->_displayed = a4;
    v12->_selected = a5;
    v12->_matched = a6;
  }

  return v12;
}

@end