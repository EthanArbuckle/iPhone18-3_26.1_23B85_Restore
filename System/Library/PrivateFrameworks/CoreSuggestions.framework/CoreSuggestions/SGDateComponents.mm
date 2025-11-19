@interface SGDateComponents
+ (id)dateComponents:(id)a3 label:(id)a4 extractionInfo:(id)a5 withRecordId:(id)a6;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToDateComponents:(id)a3;
- (SGDateComponents)initWithCoder:(id)a3;
- (SGDateComponents)initWithDateComponents:(id)a3 label:(id)a4 extractionInfo:(id)a5 recordId:(id)a6;
- (id)dateString;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SGDateComponents

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(SGLabeledObject *)self label];
  v5 = [v4 length];
  if (v5)
  {
    v6 = [(SGLabeledObject *)self label];
  }

  else
  {
    v6 = @"unlabeled";
  }

  v7 = self->_dateComponents;
  v8 = [(NSDateComponents *)v7 year];
  v9 = objc_alloc(MEMORY[0x1E696AEC0]);
  v10 = [(NSDateComponents *)v7 month];
  v11 = [(NSDateComponents *)v7 day];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {

    v12 = [v9 initWithFormat:@"%ld/%ld", v10, v11, v17];
  }

  else
  {
    v13 = [(NSDateComponents *)v7 year];

    v12 = [v9 initWithFormat:@"%ld/%ld/%ld", v10, v11, v13];
  }

  v14 = v12;
  v15 = [v3 initWithFormat:@"%@/'%@'", v6, v12];

  if (v5)
  {
  }

  return v15;
}

- (id)dateString
{
  v3 = [(NSDateComponents *)self->_dateComponents year];
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v5 = [(NSDateComponents *)self->_dateComponents month];
  v6 = [(NSDateComponents *)self->_dateComponents day];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [v4 initWithFormat:@"%ld/%ld", v5, v6, v9];
  }

  else
  {
    v7 = [v4 initWithFormat:@"%ld/%ld/%ld", v5, v6, -[NSDateComponents year](self->_dateComponents, "year")];
  }

  return v7;
}

- (BOOL)isEqualToDateComponents:(id)a3
{
  v4 = a3;
  if ([(SGObject *)self isEqualToSuggestion:v4])
  {
    v5 = self->_dateComponents;
    v6 = v5;
    if (v5 == v4[5])
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(SGDateComponents *)self isEqualToDateComponents:v5];
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = SGDateComponents;
  v4 = a3;
  [(SGLabeledObject *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_dateComponents forKey:{@"dateComponents", v5.receiver, v5.super_class}];
}

- (SGDateComponents)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SGDateComponents;
  v5 = [(SGLabeledObject *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"dateComponents"];
    dateComponents = v5->_dateComponents;
    v5->_dateComponents = v7;
  }

  return v5;
}

- (SGDateComponents)initWithDateComponents:(id)a3 label:(id)a4 extractionInfo:(id)a5 recordId:(id)a6
{
  v10 = a3;
  v15.receiver = self;
  v15.super_class = SGDateComponents;
  v11 = [(SGLabeledObject *)&v15 initWithLabel:a4 extractionInfo:a5 recordId:a6];
  if (v11)
  {
    v12 = [v10 copy];
    dateComponents = v11->_dateComponents;
    v11->_dateComponents = v12;
  }

  return v11;
}

+ (id)dateComponents:(id)a3 label:(id)a4 extractionInfo:(id)a5 withRecordId:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [[SGDateComponents alloc] initWithDateComponents:v12 label:v11 extractionInfo:v10 recordId:v9];

  return v13;
}

@end