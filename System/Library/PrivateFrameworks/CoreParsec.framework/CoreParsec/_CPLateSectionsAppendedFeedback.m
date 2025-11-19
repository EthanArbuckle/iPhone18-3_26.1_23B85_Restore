@interface _CPLateSectionsAppendedFeedback
- (BOOL)isEqual:(id)a3;
- (_CPLateSectionsAppendedFeedback)init;
- (_CPLateSectionsAppendedFeedback)initWithFacade:(id)a3;
- (void)addSections:(id)a3;
- (void)setSections:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _CPLateSectionsAppendedFeedback

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    timestamp = self->_timestamp;
    if (timestamp == [v4 timestamp])
    {
      v6 = [(_CPLateSectionsAppendedFeedback *)self sections];
      v7 = [v4 sections];
      v8 = v7;
      if ((v6 != 0) != (v7 == 0))
      {
        v9 = [(_CPLateSectionsAppendedFeedback *)self sections];
        if (!v9)
        {

LABEL_11:
          v14 = 1;
          goto LABEL_9;
        }

        v10 = v9;
        v11 = [(_CPLateSectionsAppendedFeedback *)self sections];
        v12 = [v4 sections];
        v13 = [v11 isEqual:v12];

        if (v13)
        {
          goto LABEL_11;
        }
      }

      else
      {
      }
    }
  }

  v14 = 0;
LABEL_9:

  return v14;
}

- (void)writeTo:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(_CPLateSectionsAppendedFeedback *)self timestamp])
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_sections;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        PBDataWriterWriteSubmessage();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)addSections:(id)a3
{
  v4 = a3;
  sections = self->_sections;
  v8 = v4;
  if (!sections)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_sections;
    self->_sections = v6;

    v4 = v8;
    sections = self->_sections;
  }

  [(NSArray *)sections addObject:v4];
}

- (void)setSections:(id)a3
{
  v4 = [a3 mutableCopy];
  sections = self->_sections;
  self->_sections = v4;

  MEMORY[0x1EEE66BB8]();
}

- (_CPLateSectionsAppendedFeedback)init
{
  v5.receiver = self;
  v5.super_class = _CPLateSectionsAppendedFeedback;
  v2 = [(_CPLateSectionsAppendedFeedback *)&v5 init];
  if (v2)
  {
    [(_CPLateSectionsAppendedFeedback *)v2 setTimestamp:mach_absolute_time()];
    v3 = v2;
  }

  return v2;
}

- (_CPLateSectionsAppendedFeedback)initWithFacade:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v21.receiver = self;
  v21.super_class = _CPLateSectionsAppendedFeedback;
  v5 = [(_CPLateSectionsAppendedFeedback *)&v21 init];
  if (v5)
  {
    -[_CPLateSectionsAppendedFeedback setTimestamp:](v5, "setTimestamp:", [v4 timestamp]);
    v6 = [v4 sections];
    if (v6)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v7 = 0;
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = [v4 sections];
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [[_CPResultSectionForFeedback alloc] initWithFacade:*(*(&v17 + 1) + 8 * i)];
          [v7 addObject:v13];
        }

        v10 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v10);
    }

    [(_CPLateSectionsAppendedFeedback *)v5 setSections:v7];
    v14 = v5;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v5;
}

@end