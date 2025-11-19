@interface MLRTask
- (MLRTask)initWithCoder:(id)a3;
- (MLRTask)initWithParameters:(id)a3 attachments:(id)a4;
- (MLRTask)initWithParametersDict:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MLRTask

- (MLRTask)initWithParameters:(id)a3 attachments:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = MLRTask;
  v9 = [(MLRTask *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_parameters, a3);
    objc_storeStrong(&v10->_attachments, a4);
  }

  return v10;
}

- (MLRTask)initWithParametersDict:(id)a3
{
  v4 = a3;
  v5 = [[MLRTaskParameters alloc] initWithParametersDict:v4];

  v6 = [MLRTaskAttachments alloc];
  v7 = [(MLRTaskAttachments *)v6 initWithURLs:MEMORY[0x277CBEBF8]];
  v8 = [(MLRTask *)self initWithParameters:v5 attachments:v7];

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"%@\nparameters:\n\t%@\nattachmentURLs:\n\t%@\n", v5, self->_parameters, self->_attachments];

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  parameters = self->_parameters;
  v5 = a3;
  [v5 encodeObject:parameters forKey:@"parameters"];
  [v5 encodeObject:self->_attachments forKey:@"attachments"];
}

- (MLRTask)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"parameters"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"attachments"];

  v7 = [(MLRTask *)self initWithParameters:v5 attachments:v6];
  return v7;
}

@end