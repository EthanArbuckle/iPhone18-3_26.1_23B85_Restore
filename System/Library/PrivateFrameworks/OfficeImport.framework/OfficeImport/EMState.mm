@interface EMState
- (EDSheet)currentSheet;
- (EMState)init;
- (id)cellStyleWrapperForIndex:(unint64_t)index;
- (id)hyperlinkForRow:(unint64_t)row column:(unint64_t)column;
- (void)setHyperlink:(id)hyperlink forRow:(unint64_t)row column:(unint64_t)column;
@end

@implementation EMState

- (EDSheet)currentSheet
{
  WeakRetained = objc_loadWeakRetained(&self->_currentSheet);

  return WeakRetained;
}

- (EMState)init
{
  v8.receiver = self;
  v8.super_class = EMState;
  v2 = [(CMState *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    hyperlinks = v2->_hyperlinks;
    v2->_hyperlinks = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    styleWrappers = v2->_styleWrappers;
    v2->_styleWrappers = v5;
  }

  return v2;
}

- (id)hyperlinkForRow:(unint64_t)row column:(unint64_t)column
{
  hyperlinks = self->_hyperlinks;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:column | (row << 16)];
  v6 = [(NSMutableDictionary *)hyperlinks objectForKey:v5];

  return v6;
}

- (void)setHyperlink:(id)hyperlink forRow:(unint64_t)row column:(unint64_t)column
{
  hyperlinkCopy = hyperlink;
  hyperlinks = self->_hyperlinks;
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:column | (row << 16)];
  [(NSMutableDictionary *)hyperlinks setObject:hyperlinkCopy forKey:v9];
}

- (id)cellStyleWrapperForIndex:(unint64_t)index
{
  styleWrappers = self->_styleWrappers;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  v7 = [(NSMutableDictionary *)styleWrappers objectForKeyedSubscript:v6];

  if (!v7)
  {
    document = [(CMState *)self document];
    resources = [document resources];
    styles = [resources styles];
    v11 = [styles objectAtIndex:index];

    v7 = [[EMCellStyleWrapper alloc] initWithStyle:v11];
    v12 = self->_styleWrappers;
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:index];
    [(NSMutableDictionary *)v12 setObject:v7 forKeyedSubscript:v13];
  }

  return v7;
}

@end