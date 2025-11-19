@interface FCPersonalizationFavorabilityScores
- (FCPersonalizationFavorabilityScores)initWithCoder:(id)a3;
- (FCPersonalizationFavorabilityScores)initWithPBFavorabilityScores:(id)a3;
- (id)scoreForTagID:(id)a3;
- (unint64_t)count;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FCPersonalizationFavorabilityScores

- (FCPersonalizationFavorabilityScores)initWithPBFavorabilityScores:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = FCPersonalizationFavorabilityScores;
  v6 = [(FCPersonalizationFavorabilityScores *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_pbFavorabilityScores, a3);
    v8 = MEMORY[0x1E695DF20];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __68__FCPersonalizationFavorabilityScores_initWithPBFavorabilityScores___block_invoke;
    v12[3] = &unk_1E7C36EC8;
    v13 = v5;
    v9 = [v8 fc_dictionary:v12];
    tagIDToScores = v7->_tagIDToScores;
    v7->_tagIDToScores = v9;
  }

  return v7;
}

void __68__FCPersonalizationFavorabilityScores_initWithPBFavorabilityScores___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) scores];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __68__FCPersonalizationFavorabilityScores_initWithPBFavorabilityScores___block_invoke_2;
  v6[3] = &unk_1E7C3AD10;
  v7 = v3;
  v5 = v3;
  [v4 enumerateObjectsUsingBlock:v6];
}

void __68__FCPersonalizationFavorabilityScores_initWithPBFavorabilityScores___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x1E696AD98];
  v4 = a2;
  [v4 score];
  v6 = [v3 numberWithFloat:?];
  v5 = [v4 tagId];

  [v2 fc_safelySetObject:v6 forKey:v5];
}

- (unint64_t)count
{
  v2 = [(FCPersonalizationFavorabilityScores *)self tagIDToScores];
  v3 = [v2 count];

  return v3;
}

- (id)scoreForTagID:(id)a3
{
  v4 = a3;
  v5 = [(FCPersonalizationFavorabilityScores *)self tagIDToScores];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (v6)
  {
    v7 = [(FCPersonalizationFavorabilityScores *)self tagIDToScores];
    v8 = [v7 objectForKeyedSubscript:v4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (FCPersonalizationFavorabilityScores)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"favorabilityScores"];

  v6 = [(FCPersonalizationFavorabilityScores *)self initWithPBFavorabilityScores:v5];
  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  pbFavorabilityScores = self->_pbFavorabilityScores;
  if (pbFavorabilityScores)
  {
    [a3 encodeObject:pbFavorabilityScores forKey:@"favorabilityScores"];
  }
}

@end