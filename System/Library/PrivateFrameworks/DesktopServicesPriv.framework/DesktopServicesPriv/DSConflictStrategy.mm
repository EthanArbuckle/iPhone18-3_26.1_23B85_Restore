@interface DSConflictStrategy
- (DSConflictStrategy)init;
- (id)localizedAlertMessageForSourceFileURL:(id)a3;
- (id)localizedTitleForResolution:(unint64_t)a3;
- (void)setLocalizedTitle:(id)a3 forResolution:(unint64_t)a4;
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
    v3 = [MEMORY[0x1E695DF90] dictionary];
    localizedTitlesByResolution = v2->_localizedTitlesByResolution;
    v2->_localizedTitlesByResolution = v3;
  }

  return v2;
}

- (void)setLocalizedTitle:(id)a3 forResolution:(unint64_t)a4
{
  v8 = a3;
  localizedTitlesByResolution = self->_localizedTitlesByResolution;
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  [(NSMutableDictionary *)localizedTitlesByResolution setObject:v8 forKeyedSubscript:v7];
}

- (id)localizedTitleForResolution:(unint64_t)a3
{
  localizedTitlesByResolution = self->_localizedTitlesByResolution;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v5 = [(NSMutableDictionary *)localizedTitlesByResolution objectForKeyedSubscript:v4];

  return v5;
}

- (id)localizedAlertMessageForSourceFileURL:(id)a3
{
  v4 = a3;
  v5 = [(DSConflictStrategy *)self localizedAlertMessageFormat];
  if ([v5 length])
  {
    v6 = [v4 lastPathComponent];
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:v5, v6];
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