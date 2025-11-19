@interface LNDisambiguationResponse
- (LNDisambiguationResponse)initWithCoder:(id)a3;
- (LNDisambiguationResponse)initWithIdentifier:(id)a3 context:(id)a4 selectedIndex:(id)a5 value:(id)a6 updates:(id)a7;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNDisambiguationResponse

- (LNDisambiguationResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"selectedIndex"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"value"];
  v8 = MEMORY[0x1E695DFD8];
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = [v8 setWithObjects:{v9, v10, objc_opt_class(), 0}];
  v12 = [v4 decodeObjectOfClasses:v11 forKey:@"updates"];

  if (v5 && (v6 || v7 || v12))
  {
    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"context"];
    self = [(LNDisambiguationResponse *)self initWithIdentifier:v5 context:v14 selectedIndex:v6 value:v7 updates:v12];

    v13 = self;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = LNDisambiguationResponse;
  v4 = a3;
  [(LNResponse *)&v8 encodeWithCoder:v4];
  v5 = [(LNDisambiguationResponse *)self selectedIndex:v8.receiver];
  [v4 encodeObject:v5 forKey:@"selectedIndex"];

  v6 = [(LNDisambiguationResponse *)self value];
  [v4 encodeObject:v6 forKey:@"value"];

  v7 = [(LNDisambiguationResponse *)self updates];
  [v4 encodeObject:v7 forKey:@"updates"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(LNResponse *)self identifier];
  v7 = [(LNDisambiguationResponse *)self selectedIndex];
  v8 = [(LNDisambiguationResponse *)self value];
  v9 = [(LNDisambiguationResponse *)self updates];
  v10 = [v3 stringWithFormat:@"<%@: %p, identifier: %@, selectedIndex: %@, value: %@, updates: %@>", v5, self, v6, v7, v8, v9];

  return v10;
}

- (LNDisambiguationResponse)initWithIdentifier:(id)a3 context:(id)a4 selectedIndex:(id)a5 value:(id)a6 updates:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = v17;
  if (!v15 && !v16 && !v17)
  {
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"LNDisambiguationResponse.m" lineNumber:21 description:{@"either selectedIndex, value, or updates must be non-null."}];
  }

  v24.receiver = self;
  v24.super_class = LNDisambiguationResponse;
  v19 = [(LNResponse *)&v24 initWithIdentifier:v13 context:v14];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_selectedIndex, a5);
    objc_storeStrong(&v20->_value, a6);
    objc_storeStrong(&v20->_updates, a7);
    v21 = v20;
  }

  return v20;
}

@end