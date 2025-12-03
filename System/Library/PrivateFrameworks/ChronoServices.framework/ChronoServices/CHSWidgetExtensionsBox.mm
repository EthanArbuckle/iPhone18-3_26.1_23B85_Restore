@interface CHSWidgetExtensionsBox
- (CHSWidgetExtensionsBox)initWithCoder:(id)coder;
- (CHSWidgetExtensionsBox)initWithExtensions:(id)extensions generatedFrom:(id)from;
- (void)encodeWithCoder:(id)coder;
- (void)prepareForEncoding;
@end

@implementation CHSWidgetExtensionsBox

- (CHSWidgetExtensionsBox)initWithExtensions:(id)extensions generatedFrom:(id)from
{
  extensionsCopy = extensions;
  fromCopy = from;
  v10.receiver = self;
  v10.super_class = CHSWidgetExtensionsBox;
  v8 = [(CHSWidgetExtensionsBox *)&v10 init];
  if (v8)
  {
    os_unfair_lock_lock(&sequenceLock);
    ++lock_sequenceNumber;
    [(CHSWidgetExtensionsBox *)v8 setSequenceNumber:?];
    os_unfair_lock_unlock(&sequenceLock);
    [(CHSWidgetExtensionsBox *)v8 setOptions:fromCopy];
    [(CHSWidgetExtensionsBox *)v8 setExtensions:extensionsCopy];
  }

  return v8;
}

- (void)prepareForEncoding
{
  *buf = 138412546;
  *(buf + 4) = self;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_195EB2000, log, OS_LOG_TYPE_ERROR, "Error encoding %@: %{public}@", buf, 0x16u);
}

- (CHSWidgetExtensionsBox)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = CHSWidgetExtensionsBox;
  v5 = [(CHSWidgetExtensionsBox *)&v17 init];
  v6 = v5;
  if (v5)
  {
    v5->_sequenceNumber = [coderCopy decodeIntegerForKey:@"sequence"];
    if ([coderCopy containsValueForKey:@"options"])
    {
      v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"options"];
      options = v5->_options;
      v5->_options = v7;
    }

    if ([coderCopy containsValueForKey:@"data"])
    {
      v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"data"];
      v16 = 0;
      p_isa = [MEMORY[0x1E69C7360] decodeObjectOfClass:objc_opt_class() fromData:v9 error:&v16];
      v11 = v16;
      if (v11)
      {
        [coderCopy failWithError:v11];

        v6 = 0;
      }

      else if (p_isa)
      {
        objc_storeStrong(&v5->_extensions, p_isa[2]);
      }
    }

    else
    {
      v12 = MEMORY[0x1E695DFD8];
      v13 = objc_opt_class();
      v11 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
      v9 = [coderCopy decodeObjectOfClasses:v11 forKey:@"extensions"];
      if (!v9)
      {
LABEL_12:

        goto LABEL_13;
      }

      v14 = [MEMORY[0x1E695DFD8] setWithArray:v9];
      p_isa = &v6->_extensions->super.isa;
      v6->_extensions = v14;
    }

    goto LABEL_12;
  }

LABEL_13:

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  archivedData = self->_archivedData;
  v8 = coderCopy;
  if (archivedData)
  {
    [coderCopy encodeObject:archivedData forKey:@"data"];
  }

  else
  {
    allObjects = [(NSSet *)self->_extensions allObjects];
    [v8 encodeObject:allObjects forKey:@"extensions"];
  }

  [v8 encodeInteger:self->_sequenceNumber forKey:@"sequence"];
  options = self->_options;
  if (options)
  {
    [v8 encodeObject:options forKey:@"options"];
  }
}

@end