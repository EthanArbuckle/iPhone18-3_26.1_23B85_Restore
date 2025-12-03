@interface DSConflictStrategy
- (DSConflictStrategy)init;
- (id)localizedAlertMessageForSourceFileURL:(id)l;
- (id)localizedTitleForResolution:(unint64_t)resolution;
- (void)setLocalizedTitle:(id)title forResolution:(unint64_t)resolution;
- (void)validate;
@end

@implementation DSConflictStrategy

- (DSConflictStrategy)init
{
  v6.receiver = self;
  v6.super_class = DSConflictStrategy;
  v2 = [(DSConflictStrategy *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    localizedTitlesByResolution = v2->_localizedTitlesByResolution;
    v2->_localizedTitlesByResolution = dictionary;
  }

  return v2;
}

- (void)setLocalizedTitle:(id)title forResolution:(unint64_t)resolution
{
  titleCopy = title;
  localizedTitlesByResolution = self->_localizedTitlesByResolution;
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:resolution];
  [(NSMutableDictionary *)localizedTitlesByResolution setObject:titleCopy forKeyedSubscript:v7];
}

- (id)localizedTitleForResolution:(unint64_t)resolution
{
  localizedTitlesByResolution = self->_localizedTitlesByResolution;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:resolution];
  v5 = [(NSMutableDictionary *)localizedTitlesByResolution objectForKeyedSubscript:v4];

  return v5;
}

- (id)localizedAlertMessageForSourceFileURL:(id)l
{
  lCopy = l;
  localizedAlertMessageFormat = [(DSConflictStrategy *)self localizedAlertMessageFormat];
  if ([localizedAlertMessageFormat length])
  {
    lastPathComponent = [lCopy lastPathComponent];
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:localizedAlertMessageFormat, lastPathComponent];
  }

  else
  {
    v7 = &stru_1F5F42870;
  }

  return v7;
}

- (void)validate
{
  if ([(DSConflictStrategy *)self type]!= 2)
  {

    [(DSConflictStrategy *)self type];
  }
}

@end