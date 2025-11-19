@interface LACAngelHostedSceneConfiguration
- (LACAngelHostedSceneConfiguration)initWithAngelIdentifier:(id)a3 sceneIdentifier:(id)a4 endpoint:(id)a5 requestId:(id)a6;
- (LACAngelHostedSceneConfiguration)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LACAngelHostedSceneConfiguration

- (LACAngelHostedSceneConfiguration)initWithAngelIdentifier:(id)a3 sceneIdentifier:(id)a4 endpoint:(id)a5 requestId:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = [(LACAngelHostedSceneConfiguration *)self init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_angelIdentifier, a3);
    objc_storeStrong(&v16->_sceneIdentifier, a4);
    objc_storeStrong(&v16->_connectionEndpoint, a5);
    objc_storeStrong(&v16->_evaluationRequestIdentifier, a6);
  }

  return v16;
}

- (void)encodeWithCoder:(id)a3
{
  v12 = a3;
  v4 = [(LACAngelHostedSceneConfiguration *)self angelIdentifier];
  v5 = NSStringFromSelector(sel_angelIdentifier);
  [v12 encodeObject:v4 forKey:v5];

  v6 = [(LACAngelHostedSceneConfiguration *)self sceneIdentifier];
  v7 = NSStringFromSelector(sel_sceneIdentifier);
  [v12 encodeObject:v6 forKey:v7];

  if (self->_connectionEndpoint)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      connectionEndpoint = self->_connectionEndpoint;
      v9 = NSStringFromSelector(sel_connectionEndpoint);
      [v12 encodeObject:connectionEndpoint forKey:v9];
    }
  }

  evaluationRequestIdentifier = self->_evaluationRequestIdentifier;
  if (evaluationRequestIdentifier)
  {
    v11 = NSStringFromSelector(sel_evaluationRequestIdentifier);
    [v12 encodeObject:evaluationRequestIdentifier forKey:v11];
  }
}

- (LACAngelHostedSceneConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_angelIdentifier);
  v7 = [v4 decodeObjectOfClass:v5 forKey:v6];

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_sceneIdentifier);
  v10 = [v4 decodeObjectOfClass:v8 forKey:v9];

  v11 = objc_opt_class();
  v12 = NSStringFromSelector(sel_connectionEndpoint);
  v13 = [v4 decodeObjectOfClass:v11 forKey:v12];

  v14 = objc_opt_class();
  v15 = NSStringFromSelector(sel_evaluationRequestIdentifier);
  v16 = [v4 decodeObjectOfClass:v14 forKey:v15];

  v17 = [(LACAngelHostedSceneConfiguration *)self initWithAngelIdentifier:v7 sceneIdentifier:v10 endpoint:v13 requestId:v16];
  return v17;
}

- (id)description
{
  v14[4] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v13[0] = @"angelIdentifier";
  v5 = [(LACAngelHostedSceneConfiguration *)self angelIdentifier];
  v14[0] = v5;
  v13[1] = @"connectionEndpoint";
  v6 = [(LACAngelHostedSceneConfiguration *)self connectionEndpoint];
  v14[1] = v6;
  v13[2] = @"evaluationRequestIdentifier";
  v7 = [(LACAngelHostedSceneConfiguration *)self evaluationRequestIdentifier];
  v14[2] = v7;
  v13[3] = @"sceneIdentifier";
  v8 = [(LACAngelHostedSceneConfiguration *)self sceneIdentifier];
  v14[3] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:4];
  v10 = [v3 stringWithFormat:@"<%@ %p %@>", v4, self, v9];;

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

@end