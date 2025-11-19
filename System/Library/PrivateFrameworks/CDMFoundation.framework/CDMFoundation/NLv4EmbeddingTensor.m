@interface NLv4EmbeddingTensor
- (NLv4EmbeddingTensor)init;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation NLv4EmbeddingTensor

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  if (v4)
  {
    v5 = [(NSArray *)self->_values copy];
    v6 = v4[1];
    v4[1] = v5;
  }

  return v4;
}

- (NLv4EmbeddingTensor)init
{
  v6.receiver = self;
  v6.super_class = NLv4EmbeddingTensor;
  v2 = [(NLv4EmbeddingTensor *)&v6 init];
  v3 = v2;
  if (v2)
  {
    values = v2->_values;
    v2->_values = MEMORY[0x1E695E0F0];
  }

  return v3;
}

@end