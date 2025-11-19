@interface SUUIFieldSettingDescription
+ (Class)_viewClassForSettingDescription:(id)a3;
+ (id)_inputViewElementFromElement:(id)a3;
+ (int64_t)_fieldTypeFromElement:(id)a3;
- (BOOL)allowsSelection;
- (SUUIFieldSettingDescription)initWithViewElement:(id)a3 parent:(id)a4;
- (SUUISettingsGroupController)controller;
- (id)fieldValueForKey:(id)a3;
- (void)_dispatchEventOfType:(unint64_t)a3 extraInfo:(id)a4;
- (void)handleSelectionOnCompletion:(id)a3;
- (void)setFieldValue:(id)a3 forKey:(id)a4;
@end

@implementation SUUIFieldSettingDescription

- (SUUIFieldSettingDescription)initWithViewElement:(id)a3 parent:(id)a4
{
  v6 = a3;
  v9.receiver = self;
  v9.super_class = SUUIFieldSettingDescription;
  v7 = [(SUUISettingDescription *)&v9 initWithViewElement:v6 parent:a4];
  if (v7)
  {
    v7->_fieldType = [objc_opt_class() _fieldTypeFromElement:v6];
  }

  return v7;
}

- (id)fieldValueForKey:(id)a3
{
  fieldValues = self->_fieldValues;
  if (fieldValues)
  {
    fieldValues = [fieldValues objectForKey:a3];
    v3 = vars8;
  }

  return fieldValues;
}

- (void)setFieldValue:(id)a3 forKey:(id)a4
{
  v12 = a3;
  v6 = a4;
  fieldValues = self->_fieldValues;
  if (!fieldValues)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v9 = self->_fieldValues;
    self->_fieldValues = v8;

    fieldValues = self->_fieldValues;
  }

  v10 = [(NSMutableDictionary *)fieldValues objectForKey:v6];
  if (([v12 isEqual:v10] & 1) == 0)
  {
    [(NSMutableDictionary *)self->_fieldValues setObject:v12 forKey:v6];
    v11 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{v12, v6, 0}];
    [(SUUIFieldSettingDescription *)self _dispatchEventOfType:15 extraInfo:v11];
  }
}

+ (int64_t)_fieldTypeFromElement:(id)a3
{
  v3 = [a1 _inputViewElementFromElement:a3];
  if (v3)
  {
    if ([v3 isMemberOfClass:objc_opt_class()])
    {
      v4 = 0;
    }

    else if ([v3 isMemberOfClass:objc_opt_class()])
    {
      v4 = 1;
    }

    else if ([v3 isMemberOfClass:objc_opt_class()])
    {
      v4 = 2;
    }

    else
    {
      v4 = -1;
    }
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

+ (id)_inputViewElementFromElement:(id)a3
{
  v3 = a3;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__66;
  v11 = __Block_byref_object_dispose__66;
  v12 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __60__SUUIFieldSettingDescription__inputViewElementFromElement___block_invoke;
  v6[3] = &unk_2798F5FB8;
  v6[4] = &v7;
  [v3 enumerateChildrenUsingBlock:v6];
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __60__SUUIFieldSettingDescription__inputViewElementFromElement___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v7 = a2;
  v6 = [v7 elementType];
  if ((v6 - 139) < 2 || v6 == 58 || v6 == 18)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a3 = 1;
  }
}

- (BOOL)allowsSelection
{
  if (self->_fieldType != 1)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_controller);
  if (WeakRetained && (v4 = WeakRetained, v5 = objc_loadWeakRetained(&self->_controller), v6 = [v5 isMemberOfClass:objc_opt_class()], v5, v4, v6))
  {
    v7 = objc_loadWeakRetained(&self->_controller);
    v8 = [v7 valueForSettingDescription:self];
    v9 = [v7 isAuthenticating];

    v10 = v9 ^ 1;
  }

  else
  {
    v8 = 0;
    v10 = 1;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [v8 BOOLValue];
  }

  else
  {
    v12 = 0;
  }

  v11 = v10 & v12;

  return v11;
}

- (void)handleSelectionOnCompletion:(id)a3
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_controller);
  v5 = [WeakRetained isMemberOfClass:objc_opt_class()];

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_controller);
    [v6 submitSettingDescription:self];
  }

  v7[2]();
}

+ (Class)_viewClassForSettingDescription:(id)a3
{
  v5 = a3;
  if (!v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:a2 object:a1 file:@"SUUIFieldSettingDescription.m" lineNumber:175 description:@"Incorrect type of setting description passed to method."];
LABEL_6:
    v7 = 0;
    goto LABEL_7;
  }

  v6 = v5;
  if (v6[5] > 2uLL)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:a2 object:a1 file:@"SUUIFieldSettingDescription.m" lineNumber:169 description:@"Unknown field type."];

    goto LABEL_6;
  }

  v7 = objc_opt_class();
LABEL_7:

  v8 = v7;
  return v7;
}

- (void)_dispatchEventOfType:(unint64_t)a3 extraInfo:(id)a4
{
  v9 = a4;
  v6 = objc_opt_class();
  v7 = [(SUUISettingDescription *)self viewElement];
  v8 = [v6 _inputViewElementFromElement:v7];

  if (!v8)
  {
    v8 = [(SUUISettingDescription *)self viewElement];
  }

  [v8 dispatchEventOfType:a3 canBubble:1 isCancelable:1 extraInfo:v9 completionBlock:0];
}

- (SUUISettingsGroupController)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_controller);

  return WeakRetained;
}

@end