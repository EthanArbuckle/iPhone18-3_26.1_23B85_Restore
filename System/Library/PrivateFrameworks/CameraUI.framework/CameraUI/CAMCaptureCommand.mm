@interface CAMCaptureCommand
- (CAMCaptureCommand)initWithCoder:(id)coder;
- (CAMCaptureCommand)initWithSubcommands:(id)subcommands;
- (id)copyWithZone:(_NSZone *)zone;
- (void)addSubcommand:(id)subcommand;
- (void)encodeWithCoder:(id)coder;
- (void)removeSubcommand:(id)subcommand;
@end

@implementation CAMCaptureCommand

- (CAMCaptureCommand)initWithSubcommands:(id)subcommands
{
  subcommandsCopy = subcommands;
  v10.receiver = self;
  v10.super_class = CAMCaptureCommand;
  v5 = [(CAMCaptureCommand *)&v10 init];
  if (v5)
  {
    v6 = [subcommandsCopy copy];
    subcommands = v5->_subcommands;
    v5->_subcommands = v6;

    v8 = v5;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(objc_opt_class());
  reason = [(CAMCaptureCommand *)self reason];
  v6 = [reason copy];
  v7 = v4[1];
  v4[1] = v6;

  array = [MEMORY[0x1E695DF70] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  subcommands = [(CAMCaptureCommand *)self subcommands];
  v10 = [subcommands countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(subcommands);
        }

        v14 = [*(*(&v18 + 1) + 8 * v13) copy];
        [array addObject:v14];

        ++v13;
      }

      while (v11 != v13);
      v11 = [subcommands countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  v15 = [array copy];
  v16 = v4[2];
  v4[2] = v15;

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  reason = [(CAMCaptureCommand *)self reason];

  if (reason)
  {
    reason2 = [(CAMCaptureCommand *)self reason];
    [coderCopy encodeObject:reason2 forKey:@"CAMCaptureCommandReason"];
  }

  subcommands = [(CAMCaptureCommand *)self subcommands];
  if (subcommands)
  {
    v7 = subcommands;
    subcommands2 = [(CAMCaptureCommand *)self subcommands];
    v9 = [subcommands2 count];

    if (v9)
    {
      subcommands3 = [(CAMCaptureCommand *)self subcommands];
      [coderCopy encodeObject:subcommands3 forKey:@"CAMCaptureCommandSubcommands"];
    }
  }
}

- (CAMCaptureCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(CAMCaptureCommand *)self initWithSubcommands:0];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"CAMCaptureCommandReason"];
    reason = v5->_reason;
    v5->_reason = v6;

    v8 = [coderCopy decodeObjectForKey:@"CAMCaptureCommandSubcommands"];
    subcommands = v5->_subcommands;
    v5->_subcommands = v8;

    v10 = v5;
  }

  return v5;
}

- (void)addSubcommand:(id)subcommand
{
  subcommandCopy = subcommand;
  subcommands = [(CAMCaptureCommand *)self subcommands];
  v5 = [subcommands mutableCopy];

  if (!v5)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  [v5 addObject:subcommandCopy];
  [(CAMCaptureCommand *)self setSubcommands:v5];
}

- (void)removeSubcommand:(id)subcommand
{
  subcommandCopy = subcommand;
  subcommands = [(CAMCaptureCommand *)self subcommands];
  v6 = [subcommands mutableCopy];

  [v6 removeObject:subcommandCopy];
  [(CAMCaptureCommand *)self setSubcommands:v6];
}

@end