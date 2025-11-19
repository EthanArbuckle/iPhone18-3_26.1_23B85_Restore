@interface CHSWidgetExtensionsBox
- (CHSWidgetExtensionsBox)initWithCoder:(id)a3;
- (CHSWidgetExtensionsBox)initWithExtensions:(id)a3 generatedFrom:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)prepareForEncoding;
@end

@implementation CHSWidgetExtensionsBox

- (CHSWidgetExtensionsBox)initWithExtensions:(id)a3 generatedFrom:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10.receiver = self;
  v10.super_class = CHSWidgetExtensionsBox;
  v8 = [(CHSWidgetExtensionsBox *)&v10 init];
  if (v8)
  {
    os_unfair_lock_lock(&sequenceLock);
    ++lock_sequenceNumber;
    [(CHSWidgetExtensionsBox *)v8 setSequenceNumber:?];
    os_unfair_lock_unlock(&sequenceLock);
    [(CHSWidgetExtensionsBox *)v8 setOptions:v7];
    [(CHSWidgetExtensionsBox *)v8 setExtensions:v6];
  }

  return v8;
}

- (void)prepareForEncoding
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_195EB2000, log, OS_LOG_TYPE_ERROR, "Error encoding %@: %{public}@", buf, 0x16u);
}

- (CHSWidgetExtensionsBox)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = CHSWidgetExtensionsBox;
  v5 = [(CHSWidgetExtensionsBox *)&v17 init];
  v6 = v5;
  if (v5)
  {
    v5->_sequenceNumber = [v4 decodeIntegerForKey:@"sequence"];
    if ([v4 containsValueForKey:@"options"])
    {
      v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"options"];
      options = v5->_options;
      v5->_options = v7;
    }

    if ([v4 containsValueForKey:@"data"])
    {
      v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"data"];
      v16 = 0;
      p_isa = [MEMORY[0x1E69C7360] decodeObjectOfClass:objc_opt_class() fromData:v9 error:&v16];
      v11 = v16;
      if (v11)
      {
        [v4 failWithError:v11];

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
      v9 = [v4 decodeObjectOfClasses:v11 forKey:@"extensions"];
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  archivedData = self->_archivedData;
  v8 = v4;
  if (archivedData)
  {
    [v4 encodeObject:archivedData forKey:@"data"];
  }

  else
  {
    v6 = [(NSSet *)self->_extensions allObjects];
    [v8 encodeObject:v6 forKey:@"extensions"];
  }

  [v8 encodeInteger:self->_sequenceNumber forKey:@"sequence"];
  options = self->_options;
  if (options)
  {
    [v8 encodeObject:options forKey:@"options"];
  }
}

@end