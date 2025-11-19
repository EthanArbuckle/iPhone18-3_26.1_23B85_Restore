@interface MUPlaceActionControlledItemViewModel
- (MUPlaceActionControlledItemViewModel)initWithPlaceActionController:(id)a3;
- (id)accessibilityIdentifier;
- (id)analyticsButtonValues;
- (void)performWithPresentationOptions:(id)a3;
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

- (void)performWithPresentationOptions:(id)a3
{
  v7 = a3;
  v4 = [(_MKPlaceActionButtonController *)self->_actionButtonController buttonSelectedBlock];

  if (v4)
  {
    v5 = [(_MKPlaceActionButtonController *)self->_actionButtonController buttonSelectedBlock];
    v6 = [v7 sourceView];
    (v5)[2](v5, v6);
  }
}

- (id)accessibilityIdentifier
{
  v2 = [(MUPlaceActionControlledItemViewModel *)self titleText];
  v3 = [v2 stringByReplacingOccurrencesOfString:@"\\s" withString:&stru_1F44CA030 options:1024 range:{0, objc_msgSend(v2, "length")}];

  return v3;
}

- (MUPlaceActionControlledItemViewModel)initWithPlaceActionController:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MUPlaceActionControlledItemViewModel;
  v6 = [(MUActionRowItemViewModel *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_actionButtonController, a3);
  }

  return v7;
}

@end