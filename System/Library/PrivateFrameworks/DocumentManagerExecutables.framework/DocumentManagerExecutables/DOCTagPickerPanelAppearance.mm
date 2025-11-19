@interface DOCTagPickerPanelAppearance
- (DOCTagPickerPanelAppearance)initWithTopMargin:(double)a3 bottomMargin:(double)a4 maxHeight:(double)a5;
- (double)maxHeight;
@end

@implementation DOCTagPickerPanelAppearance

- (DOCTagPickerPanelAppearance)initWithTopMargin:(double)a3 bottomMargin:(double)a4 maxHeight:(double)a5
{
  v9.receiver = self;
  v9.super_class = DOCTagPickerPanelAppearance;
  result = [(DOCTagPickerPanelAppearance *)&v9 init];
  if (result)
  {
    result->_topMargin = a3;
    result->_bottomMargin = a4;
    result->_maxHeight = a5;
  }

  return result;
}

- (double)maxHeight
{
  v9 = *MEMORY[0x277D85DE8];
  maxHeight = self->_maxHeight;
  if (maxHeight == -12341234.0)
  {
    v4 = MEMORY[0x277D062B8];
    v5 = *MEMORY[0x277D062B8];
    if (!*MEMORY[0x277D062B8])
    {
      DOCInitLogging();
      v5 = *v4;
    }

    maxHeight = 1000.0;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = self;
      _os_log_impl(&dword_2493AC000, v5, OS_LOG_TYPE_DEFAULT, "WARNING: Attempt to use metric (%@.maxHeight) that should never be used in this context", &v7, 0xCu);
    }
  }

  return maxHeight;
}

@end