@interface EMState
- (EDSheet)currentSheet;
- (EMState)init;
- (id)cellStyleWrapperForIndex:(unint64_t)a3;
- (id)hyperlinkForRow:(unint64_t)a3 column:(unint64_t)a4;
- (void)setHyperlink:(id)a3 forRow:(unint64_t)a4 column:(unint64_t)a5;
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

- (id)hyperlinkForRow:(unint64_t)a3 column:(unint64_t)a4
{
  hyperlinks = self->_hyperlinks;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a4 | (a3 << 16)];
  v6 = [(NSMutableDictionary *)hyperlinks objectForKey:v5];

  return v6;
}

- (void)setHyperlink:(id)a3 forRow:(unint64_t)a4 column:(unint64_t)a5
{
  v10 = a3;
  hyperlinks = self->_hyperlinks;
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a5 | (a4 << 16)];
  [(NSMutableDictionary *)hyperlinks setObject:v10 forKey:v9];
}

- (id)cellStyleWrapperForIndex:(unint64_t)a3
{
  styleWrappers = self->_styleWrappers;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  v7 = [(NSMutableDictionary *)styleWrappers objectForKeyedSubscript:v6];

  if (!v7)
  {
    v8 = [(CMState *)self document];
    v9 = [v8 resources];
    v10 = [v9 styles];
    v11 = [v10 objectAtIndex:a3];

    v7 = [[EMCellStyleWrapper alloc] initWithStyle:v11];
    v12 = self->_styleWrappers;
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    [(NSMutableDictionary *)v12 setObject:v7 forKeyedSubscript:v13];
  }

  return v7;
}

@end