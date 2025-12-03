@interface SGDateComponents
+ (id)dateComponents:(id)components label:(id)label extractionInfo:(id)info withRecordId:(id)id;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToDateComponents:(id)components;
- (SGDateComponents)initWithCoder:(id)coder;
- (SGDateComponents)initWithDateComponents:(id)components label:(id)label extractionInfo:(id)info recordId:(id)id;
- (id)dateString;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SGDateComponents

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  label = [(SGLabeledObject *)self label];
  v5 = [label length];
  if (v5)
  {
    label2 = [(SGLabeledObject *)self label];
  }

  else
  {
    label2 = @"unlabeled";
  }

  v7 = self->_dateComponents;
  year = [(NSDateComponents *)v7 year];
  v9 = objc_alloc(MEMORY[0x1E696AEC0]);
  month = [(NSDateComponents *)v7 month];
  v11 = [(NSDateComponents *)v7 day];
  if (year == 0x7FFFFFFFFFFFFFFFLL)
  {

    v12 = [v9 initWithFormat:@"%ld/%ld", month, v11, v17];
  }

  else
  {
    year2 = [(NSDateComponents *)v7 year];

    v12 = [v9 initWithFormat:@"%ld/%ld/%ld", month, v11, year2];
  }

  v14 = v12;
  v15 = [v3 initWithFormat:@"%@/'%@'", label2, v12];

  if (v5)
  {
  }

  return v15;
}

- (id)dateString
{
  year = [(NSDateComponents *)self->_dateComponents year];
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  month = [(NSDateComponents *)self->_dateComponents month];
  v6 = [(NSDateComponents *)self->_dateComponents day];
  if (year == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [v4 initWithFormat:@"%ld/%ld", month, v6, v9];
  }

  else
  {
    v7 = [v4 initWithFormat:@"%ld/%ld/%ld", month, v6, -[NSDateComponents year](self->_dateComponents, "year")];
  }

  return v7;
}

- (BOOL)isEqualToDateComponents:(id)components
{
  componentsCopy = components;
  if ([(SGObject *)self isEqualToSuggestion:componentsCopy])
  {
    v5 = self->_dateComponents;
    v6 = v5;
    if (v5 == componentsCopy[5])
    {
      v7 = 1;
    }

    else
    {
      v7 = [(NSDateComponents *)v5 isEqual:?];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(SGDateComponents *)self isEqualToDateComponents:v5];
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = SGDateComponents;
  coderCopy = coder;
  [(SGLabeledObject *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_dateComponents forKey:{@"dateComponents", v5.receiver, v5.super_class}];
}

- (SGDateComponents)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = SGDateComponents;
  v5 = [(SGLabeledObject *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"dateComponents"];
    dateComponents = v5->_dateComponents;
    v5->_dateComponents = v7;
  }

  return v5;
}

- (SGDateComponents)initWithDateComponents:(id)components label:(id)label extractionInfo:(id)info recordId:(id)id
{
  componentsCopy = components;
  v15.receiver = self;
  v15.super_class = SGDateComponents;
  v11 = [(SGLabeledObject *)&v15 initWithLabel:label extractionInfo:info recordId:id];
  if (v11)
  {
    v12 = [componentsCopy copy];
    dateComponents = v11->_dateComponents;
    v11->_dateComponents = v12;
  }

  return v11;
}

+ (id)dateComponents:(id)components label:(id)label extractionInfo:(id)info withRecordId:(id)id
{
  idCopy = id;
  infoCopy = info;
  labelCopy = label;
  componentsCopy = components;
  v13 = [[SGDateComponents alloc] initWithDateComponents:componentsCopy label:labelCopy extractionInfo:infoCopy recordId:idCopy];

  return v13;
}

@end