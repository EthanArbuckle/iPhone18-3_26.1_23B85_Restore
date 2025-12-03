@interface MUPlaceActionControlledItemViewModel
- (MUPlaceActionControlledItemViewModel)initWithPlaceActionController:(id)controller;
- (id)accessibilityIdentifier;
- (id)analyticsButtonValues;
- (void)performWithPresentationOptions:(id)options;
@end

@implementation MUPlaceActionControlledItemViewModel

- (id)analyticsButtonValues
{
  v9[1] = *MEMORY[0x1E69E9840];
  if ([(_MKPlaceActionButtonController *)self->_actionButtonController analyticsAction]== 403)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69A24B0]);
    [v3 setType:57];
    v9[0] = v3;
    v4 = v9;
LABEL_5:
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

    goto LABEL_7;
  }

  if ([(_MKPlaceActionButtonController *)self->_actionButtonController analyticsAction]== 405)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69A24B0]);
    [v3 setType:58];
    v8 = v3;
    v4 = &v8;
    goto LABEL_5;
  }

  v5 = MEMORY[0x1E695E0F0];
LABEL_7:
  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)performWithPresentationOptions:(id)options
{
  optionsCopy = options;
  buttonSelectedBlock = [(_MKPlaceActionButtonController *)self->_actionButtonController buttonSelectedBlock];

  if (buttonSelectedBlock)
  {
    buttonSelectedBlock2 = [(_MKPlaceActionButtonController *)self->_actionButtonController buttonSelectedBlock];
    sourceView = [optionsCopy sourceView];
    (buttonSelectedBlock2)[2](buttonSelectedBlock2, sourceView);
  }
}

- (id)accessibilityIdentifier
{
  titleText = [(MUPlaceActionControlledItemViewModel *)self titleText];
  v3 = [titleText stringByReplacingOccurrencesOfString:@"\\s" withString:&stru_1F44CA030 options:1024 range:{0, objc_msgSend(titleText, "length")}];

  return v3;
}

- (MUPlaceActionControlledItemViewModel)initWithPlaceActionController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = MUPlaceActionControlledItemViewModel;
  v6 = [(MUActionRowItemViewModel *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_actionButtonController, controller);
  }

  return v7;
}

@end