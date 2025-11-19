@interface _UIFocusEnvironmentPreferenceEnumerator
- (BOOL)_shouldInferDefaultPreferenceForEnvironmentInContext:(id)a3;
- (_UIFocusEnvironmentPreferenceEnumerator)initWithEnumerationMode:(int64_t)a3;
- (void)enumeratePreferencesForEnvironment:(id)a3 usingBlock:(id)a4;
@end

@implementation _UIFocusEnvironmentPreferenceEnumerator

- (_UIFocusEnvironmentPreferenceEnumerator)initWithEnumerationMode:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = _UIFocusEnvironmentPreferenceEnumerator;
  result = [(_UIFocusEnvironmentPreferenceEnumerator *)&v5 init];
  if (result)
  {
    result->_allowsInferringPreferences = 1;
    result->_enumerationMode = a3;
  }

  return result;
}

- (void)enumeratePreferencesForEnvironment:(id)a3 usingBlock:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"_UIFocusEnvironmentPreferenceEnumerator.m" lineNumber:527 description:{@"Invalid parameter not satisfying: %@", @"environment"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v13 = [MEMORY[0x277CCA890] currentHandler];
  [v13 handleFailureInMethod:a2 object:self file:@"_UIFocusEnvironmentPreferenceEnumerator.m" lineNumber:528 description:{@"Invalid parameter not satisfying: %@", @"block"}];

LABEL_3:
  v10 = [[_UIFocusEnvironmentPreferenceEnumerationContext alloc] initWithFocusEnvironment:v7 enumerationMode:[(_UIFocusEnvironmentPreferenceEnumerator *)self enumerationMode]];
  [(_UIFocusEnvironmentPreferenceEnumerationContext *)v10 setDelegate:self];
  if (self->_debugLog)
  {
    v11 = [(_UIFocusEnvironmentPreferenceEnumerationContext *)v10 _startLogging];
    [(_UIDebugLogNode *)self->_debugLog addMessage:v11];
  }

  v14 = 0;
  _enumeratePreferredFocusEnvironments(self, v10, v9, &v14);
  if (self->_debugLog)
  {
    [(_UIFocusEnvironmentPreferenceEnumerationContext *)v10 _stopLogging];
  }
}

- (BOOL)_shouldInferDefaultPreferenceForEnvironmentInContext:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_allowsInferringPreferences && [v4 isInPreferredSubtree])
  {
    v6 = MEMORY[0x24C24D980](self->_shouldInferPreferenceForEnvironmentHandler);
    v7 = v6;
    if (v6)
    {
      v8 = (*(v6 + 16))(v6, v5);
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end