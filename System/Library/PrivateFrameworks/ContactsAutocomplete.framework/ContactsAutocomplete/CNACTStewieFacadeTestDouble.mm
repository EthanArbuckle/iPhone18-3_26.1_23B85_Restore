@interface CNACTStewieFacadeTestDouble
- (CNACTStewieFacadeTestDouble)initWithPhrases:(id)a3 numbers:(id)a4;
- (id)terms;
@end

@implementation CNACTStewieFacadeTestDouble

- (CNACTStewieFacadeTestDouble)initWithPhrases:(id)a3 numbers:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = CNACTStewieFacadeTestDouble;
  v8 = [(CNACTStewieFacadeTestDouble *)&v15 init];
  if (v8)
  {
    v9 = [v6 copy];
    phrases = v8->_phrases;
    v8->_phrases = v9;

    v11 = [v7 copy];
    numbers = v8->_numbers;
    v8->_numbers = v11;

    v13 = v8;
  }

  return v8;
}

- (id)terms
{
  v7[2] = *MEMORY[0x277D85DE8];
  numbers = self->_numbers;
  v7[0] = self->_phrases;
  v7[1] = numbers;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];
  v4 = [v3 _cn_flatten];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

@end