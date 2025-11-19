@interface BSUIMapServiceTicket
@end

@implementation BSUIMapServiceTicket

void __43___BSUIMapServiceTicket_submitWithHandler___block_invoke(uint64_t a1, id a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = MEMORY[0x277CBEB18];
    v7 = a2;
    v8 = [v6 array];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __43___BSUIMapServiceTicket_submitWithHandler___block_invoke_2;
    v9[3] = &unk_278D3ED90;
    a2 = v8;
    v10 = a2;
    [v7 enumerateObjectsUsingBlock:v9];
  }

  (*(*(a1 + 32) + 16))();
}

void __43___BSUIMapServiceTicket_submitWithHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[BSUIMapItem alloc] initWithMKMapItem:v3];

  [*(a1 + 32) addObject:v4];
}

@end