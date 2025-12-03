@interface MLRTask
- (MLRTask)initWithCoder:(id)coder;
- (MLRTask)initWithParameters:(id)parameters attachments:(id)attachments;
- (MLRTask)initWithParametersDict:(id)dict;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MLRTask

- (MLRTask)initWithParameters:(id)parameters attachments:(id)attachments
{
  parametersCopy = parameters;
  attachmentsCopy = attachments;
  v12.receiver = self;
  v12.super_class = MLRTask;
  v9 = [(MLRTask *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_parameters, parameters);
    objc_storeStrong(&v10->_attachments, attachments);
  }

  return v10;
}

- (MLRTask)initWithParametersDict:(id)dict
{
  dictCopy = dict;
  v5 = [[MLRTaskParameters alloc] initWithParametersDict:dictCopy];

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

- (void)encodeWithCoder:(id)coder
{
  parameters = self->_parameters;
  coderCopy = coder;
  [coderCopy encodeObject:parameters forKey:@"parameters"];
  [coderCopy encodeObject:self->_attachments forKey:@"attachments"];
}

- (MLRTask)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"parameters"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"attachments"];

  v7 = [(MLRTask *)self initWithParameters:v5 attachments:v6];
  return v7;
}

@end