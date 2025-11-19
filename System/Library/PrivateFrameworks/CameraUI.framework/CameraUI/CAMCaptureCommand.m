@interface CAMCaptureCommand
- (CAMCaptureCommand)initWithCoder:(id)a3;
- (CAMCaptureCommand)initWithSubcommands:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)addSubcommand:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)removeSubcommand:(id)a3;
@end

@implementation CAMCaptureCommand

- (CAMCaptureCommand)initWithSubcommands:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CAMCaptureCommand;
  v5 = [(CAMCaptureCommand *)&v10 init];
  if (v5)
  {
    v6 = [v4 copy];
    subcommands = v5->_subcommands;
    v5->_subcommands = v6;

    v8 = v5;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [(CAMCaptureCommand *)self reason];
  v6 = [v5 copy];
  v7 = v4[1];
  v4[1] = v6;

  v8 = [MEMORY[0x1E695DF70] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = [(CAMCaptureCommand *)self subcommands];
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      v13 = 0;
      do
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v18 + 1) + 8 * v13) copy];
        [v8 addObject:v14];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  v15 = [v8 copy];
  v16 = v4[2];
  v4[2] = v15;

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v11 = a3;
  v4 = [(CAMCaptureCommand *)self reason];

  if (v4)
  {
    v5 = [(CAMCaptureCommand *)self reason];
    [v11 encodeObject:v5 forKey:@"CAMCaptureCommandReason"];
  }

  v6 = [(CAMCaptureCommand *)self subcommands];
  if (v6)
  {
    v7 = v6;
    v8 = [(CAMCaptureCommand *)self subcommands];
    v9 = [v8 count];

    if (v9)
    {
      v10 = [(CAMCaptureCommand *)self subcommands];
      [v11 encodeObject:v10 forKey:@"CAMCaptureCommandSubcommands"];
    }
  }
}

- (CAMCaptureCommand)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CAMCaptureCommand *)self initWithSubcommands:0];
  if (v5)
  {
    v6 = [v4 decodeObjectForKey:@"CAMCaptureCommandReason"];
    reason = v5->_reason;
    v5->_reason = v6;

    v8 = [v4 decodeObjectForKey:@"CAMCaptureCommandSubcommands"];
    subcommands = v5->_subcommands;
    v5->_subcommands = v8;

    v10 = v5;
  }

  return v5;
}

- (void)addSubcommand:(id)a3
{
  v6 = a3;
  v4 = [(CAMCaptureCommand *)self subcommands];
  v5 = [v4 mutableCopy];

  if (!v5)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  [v5 addObject:v6];
  [(CAMCaptureCommand *)self setSubcommands:v5];
}

- (void)removeSubcommand:(id)a3
{
  v4 = a3;
  v5 = [(CAMCaptureCommand *)self subcommands];
  v6 = [v5 mutableCopy];

  [v6 removeObject:v4];
  [(CAMCaptureCommand *)self setSubcommands:v6];
}

@end