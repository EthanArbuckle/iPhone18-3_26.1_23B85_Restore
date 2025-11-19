@interface LACUIHostedSceneSpecification
- (LACUIHostedSceneSpecification)initWithConfiguration:(id)a3;
- (id)userActivity;
@end

@implementation LACUIHostedSceneSpecification

- (LACUIHostedSceneSpecification)initWithConfiguration:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = LACUIHostedSceneSpecification;
  v6 = [(LACUIHostedSceneSpecification *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, a3);
  }

  return v7;
}

- (id)userActivity
{
  v14[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CCAE58]);
  v4 = [v3 initWithActivityType:*MEMORY[0x277D23E30]];
  v13 = *MEMORY[0x277D23E20];
  v5 = [(LACAngelHostedSceneConfiguration *)self->_configuration sceneIdentifier];
  v14[0] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v7 = [v6 mutableCopy];

  v8 = [(LACAngelHostedSceneConfiguration *)self->_configuration evaluationRequestIdentifier];

  if (v8)
  {
    v9 = [(LACAngelHostedSceneConfiguration *)self->_configuration evaluationRequestIdentifier];
    [v7 setObject:v9 forKeyedSubscript:*MEMORY[0x277D23E18]];
  }

  v10 = [(LACAngelHostedSceneConfiguration *)self->_configuration connectionEndpoint];

  if (v10)
  {
    [v7 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D23E28]];
  }

  [v4 setUserInfo:v7];

  v11 = *MEMORY[0x277D85DE8];

  return v4;
}

@end