@interface FLAlertControllerHelper
+ (void)presentAlertWithTitle:(id)a3 message:(id)a4 actions:(id)a5 presentingController:(id)a6;
@end

@implementation FLAlertControllerHelper

+ (void)presentAlertWithTitle:(id)a3 message:(id)a4 actions:(id)a5 presentingController:(id)a6
{
  v42 = *MEMORY[0x277D85DE8];
  v29 = a3;
  v28 = a4;
  v9 = a5;
  v27 = a6;
  v10 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v9, "count")}];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = v9;
  v11 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v37;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v37 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v36 + 1) + 8 * i);
        v16 = MEMORY[0x277D750F8];
        v17 = [v15 title];
        v18 = [v15 style];
        v35[0] = MEMORY[0x277D85DD0];
        v35[1] = 3221225472;
        v35[2] = __86__FLAlertControllerHelper_presentAlertWithTitle_message_actions_presentingController___block_invoke;
        v35[3] = &unk_278E35A60;
        v35[4] = v15;
        v19 = [v16 actionWithTitle:v17 style:v18 handler:v35];
        [v10 addObject:v19];
      }

      v12 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v12);
  }

  v20 = [MEMORY[0x277D75110] alertControllerWithTitle:v29 message:v28 preferredStyle:1];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v21 = v10;
  v22 = [v21 countByEnumeratingWithState:&v31 objects:v40 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v32;
    do
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v32 != v24)
        {
          objc_enumerationMutation(v21);
        }

        [v20 addAction:{*(*(&v31 + 1) + 8 * j), v27}];
      }

      v23 = [v21 countByEnumeratingWithState:&v31 objects:v40 count:16];
    }

    while (v23);
  }

  [v27 presentViewController:v20 animated:1 completion:0];
  v26 = *MEMORY[0x277D85DE8];
}

void __86__FLAlertControllerHelper_presentAlertWithTitle_message_actions_presentingController___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) handler];

  if (v3)
  {
    v4 = [*(a1 + 32) handler];
    (v4)[2](v4, v5);
  }
}

@end