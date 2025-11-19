@interface MPCPlayerCommandDialog
- (MPCPlayerCommandDialog)initWithMPDialog:(id)a3 request:(id)a4;
- (id)description;
@end

@implementation MPCPlayerCommandDialog

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(MPCPlayerCommandDialog *)self localizedTitle];
  v6 = [(MPCPlayerCommandDialog *)self localizedMessage];
  v7 = [(MPCPlayerCommandDialog *)self actions];
  v8 = [v3 stringWithFormat:@"<%@: %p title=%@ message=%@ actions=%@>", v4, self, v5, v6, v7];

  return v8;
}

- (MPCPlayerCommandDialog)initWithMPDialog:(id)a3 request:(id)a4
{
  v7 = a3;
  v8 = a4;
  v17.receiver = self;
  v17.super_class = MPCPlayerCommandDialog;
  v9 = [(MPCPlayerCommandDialog *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dialog, a3);
    v11 = [(MPRemoteCommandHandlerDialog *)v10->_dialog actions];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __51__MPCPlayerCommandDialog_initWithMPDialog_request___block_invoke;
    v15[3] = &unk_1E8238D50;
    v16 = v8;
    v12 = [v11 msv_map:v15];
    actions = v10->_actions;
    v10->_actions = v12;
  }

  return v10;
}

MPCPlayerCommandDialogAction *__51__MPCPlayerCommandDialog_initWithMPDialog_request___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[MPCPlayerCommandDialogAction alloc] initWithMPAction:v3 request:*(a1 + 32)];

  return v4;
}

@end