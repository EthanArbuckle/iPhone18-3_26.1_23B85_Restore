@interface _DASActivityProgressWrapper
- (_DASActivityProgressWrapper)initWithCoder:(id)coder;
- (_DASActivityProgressWrapper)initWithProgress:(id)progress;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _DASActivityProgressWrapper

- (_DASActivityProgressWrapper)initWithProgress:(id)progress
{
  progressCopy = progress;
  v9.receiver = self;
  v9.super_class = _DASActivityProgressWrapper;
  v6 = [(_DASActivityProgressWrapper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_progress, progress);
  }

  return v7;
}

- (_DASActivityProgressWrapper)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = _DASActivityProgressWrapper;
  v5 = [(_DASActivityProgressWrapper *)&v21 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E696AE38]);
    [v6 setTotalUnitCount:{objc_msgSend(coderCopy, "decodeInt64ForKey:", @"total"}];
    [v6 setCompletedUnitCount:{objc_msgSend(coderCopy, "decodeInt64ForKey:", @"completed"}];
    if ([coderCopy decodeInt64ForKey:@"cancelled"])
    {
      [v6 cancel];
    }

    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = [v7 setWithObjects:{v8, v9, v10, v11, v12, objc_opt_class(), 0}];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"userInfo"];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __45___DASActivityProgressWrapper_initWithCoder___block_invoke;
    v19[3] = &unk_1E7C8F530;
    v15 = v6;
    v20 = v15;
    [v14 enumerateKeysAndObjectsUsingBlock:v19];
    progress = v5->_progress;
    v5->_progress = v15;
    v17 = v15;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  progress = self->_progress;
  coderCopy = coder;
  [coderCopy encodeInt64:-[NSProgress completedUnitCount](progress forKey:{"completedUnitCount"), @"completed"}];
  [coderCopy encodeInt64:-[NSProgress totalUnitCount](self->_progress forKey:{"totalUnitCount"), @"total"}];
  [coderCopy encodeBool:-[NSProgress isCancelled](self->_progress forKey:{"isCancelled"), @"cancelled"}];
  userInfo = [(NSProgress *)self->_progress userInfo];
  [coderCopy encodeObject:userInfo forKey:@"userInfo"];
}

- (id)description
{
  progress = [(_DASActivityProgressWrapper *)self progress];
  v3 = [progress description];

  return v3;
}

@end