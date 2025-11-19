@interface PKPaymentSetupAssistantCoreProvisioningContext
- (BOOL)canSelectIndex:(unint64_t)a3;
- (BOOL)selectIndex:(unint64_t)a3;
- (NSIndexSet)selectedIndices;
- (NSString)description;
- (PKPaymentSetupAssistantCoreProvisioningContext)initWithProvisioningController:(id)a3 setupAssistantCredentials:(id)a4 maximumSelectable:(unint64_t)a5;
- (id)availablePaymentCredentials;
- (id)selectedCredentials;
- (void)dealloc;
@end

@implementation PKPaymentSetupAssistantCoreProvisioningContext

- (PKPaymentSetupAssistantCoreProvisioningContext)initWithProvisioningController:(id)a3 setupAssistantCredentials:(id)a4 maximumSelectable:(unint64_t)a5
{
  v47 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v44.receiver = self;
  v44.super_class = PKPaymentSetupAssistantCoreProvisioningContext;
  v11 = [(PKPaymentSetupAssistantCoreProvisioningContext *)&v44 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_provisioningController, a3);
    objc_storeStrong(&v12->_setupAssistantCoreCredentials, a4);
    if ([v10 count] <= a5)
    {
      a5 = [v10 count];
    }

    v12->_maximumSelectable = a5;
    v13 = objc_alloc_init(MEMORY[0x1E696AD50]);
    mutableSelectedIndices = v12->_mutableSelectedIndices;
    v12->_mutableSelectedIndices = v13;

    if (PKDisableDynamicSEAllocation())
    {
      v15 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndexesInRange:{0, v12->_maximumSelectable}];
      v16 = [v15 mutableCopy];
      v17 = v12->_mutableSelectedIndices;
      v12->_mutableSelectedIndices = v16;
      goto LABEL_31;
    }

    v18 = [(NSArray *)v12->_setupAssistantCoreCredentials count];
    v15 = [(PKPaymentProvisioningController *)v12->_provisioningController storageSnapshot];
    v19 = [(PKPaymentProvisioningController *)v12->_provisioningController webService];
    v20 = [v19 targetDevice];
    v17 = [v20 deviceClass];

    if (v18)
    {
      v40 = v10;
      v41 = v9;
      v21 = 0;
      v42 = v17;
      v43 = v15;
      while (1)
      {
        v22 = [(NSArray *)v12->_setupAssistantCoreCredentials objectAtIndexedSubscript:v21, v40, v41];
        v23 = [v22 credential];

        v24 = [v23 remoteCredential];
        v25 = v24;
        if (!v24 || [v24 status] != 5 || objc_msgSend(v25, "transferType") != 1)
        {
          goto LABEL_17;
        }

        v26 = [v25 transferableFromDevices];
        v27 = [v26 firstObject];

        v28 = [v27 deviceClass];
        v29 = v28;
        if (v28)
        {
          v30 = v28;
          v31 = v17;
          v32 = v17;
          v33 = v31;
          if (v30 == v31)
          {

            v17 = v32;
            v15 = v43;
LABEL_17:
            v35 = [v23 appletTypes];
            v27 = v35;
            if (v35 && [v35 count])
            {
              if (![v15 addAppletTypesToSnapshot:v27])
              {

LABEL_30:
                v10 = v40;
                v9 = v41;
                break;
              }
            }

            else
            {
              v36 = PKLogFacilityTypeGetObject(0x25uLL);
              if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_1AD337000, v36, OS_LOG_TYPE_DEFAULT, "Allowing credential to be selected because no applet type specified", buf, 2u);
              }
            }

            [(NSMutableIndexSet *)v12->_mutableSelectedIndices addIndex:v21];
            goto LABEL_25;
          }

          if (v32)
          {
            v34 = [v30 isEqualToString:v31];

            v17 = v42;
            v15 = v43;
            if ((v34 & 1) == 0)
            {
              goto LABEL_26;
            }

            goto LABEL_17;
          }

          v17 = v42;
          v15 = v43;
        }

LABEL_25:
LABEL_26:

        if (v18 == ++v21)
        {
          goto LABEL_30;
        }
      }
    }

LABEL_31:

    v37 = PKLogFacilityTypeGetObject(0x2AuLL);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v38 = v12->_mutableSelectedIndices;
      *buf = 138412290;
      v46 = v38;
      _os_log_impl(&dword_1AD337000, v37, OS_LOG_TYPE_DEFAULT, "[PKPaymentSetupAssistantCoreProvisioningContext init] - selected: %@", buf, 0xCu);
    }

    [(PKPaymentProvisioningController *)v12->_provisioningController addDelegate:v12];
  }

  return v12;
}

- (void)dealloc
{
  [(PKPaymentProvisioningController *)self->_provisioningController removeDelegate:self];
  v3.receiver = self;
  v3.super_class = PKPaymentSetupAssistantCoreProvisioningContext;
  [(PKPaymentSetupAssistantCoreProvisioningContext *)&v3 dealloc];
}

- (BOOL)canSelectIndex:(unint64_t)a3
{
  v5 = [(NSArray *)self->_setupAssistantCoreCredentials count];
  v6 = [(NSMutableIndexSet *)self->_mutableSelectedIndices containsIndex:a3];
  if (PKDynamicSEAllocationFakeFullSE())
  {
    v7 = [(NSArray *)self->_setupAssistantCoreCredentials objectAtIndexedSubscript:a3];
    v8 = [v7 credential];
    v9 = [v8 appletTypes];

    v10 = [(PKPaymentProvisioningController *)self->_provisioningController storageSnapshot];
    v11 = v10;
    if (v6)
    {
      [v10 removeAppletTypesFromSnapshot:v9];
      LOBYTE(v6) = 1;
    }

    else
    {
      v6 = [v10 addAppletTypesToSnapshot:v9];
    }
  }

  else
  {
    v12 = [(NSMutableIndexSet *)self->_mutableSelectedIndices count];
    if (v5 <= a3)
    {
      LOBYTE(v6) = 0;
    }

    else if (v12 < self->_maximumSelectable)
    {
      LOBYTE(v6) = 1;
    }
  }

  return v6;
}

- (BOOL)selectIndex:(unint64_t)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = [(PKPaymentSetupAssistantCoreProvisioningContext *)self canSelectIndex:?];
  if (v5)
  {
    v6 = [(NSMutableIndexSet *)self->_mutableSelectedIndices containsIndex:a3];
    mutableSelectedIndices = self->_mutableSelectedIndices;
    if (v6)
    {
      [(NSMutableIndexSet *)mutableSelectedIndices removeIndex:a3];
    }

    else
    {
      [(NSMutableIndexSet *)mutableSelectedIndices addIndex:a3];
    }

    v8 = PKLogFacilityTypeGetObject(0x2AuLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v14 = self->_mutableSelectedIndices;
      v16 = 138412290;
      v17 = v14;
      v11 = "[PKPaymentSetupAssistantCoreProvisioningContext selectIndex:] - selected: %@";
      v12 = v8;
      v13 = 12;
      goto LABEL_9;
    }
  }

  else
  {
    v8 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(NSArray *)self->_setupAssistantCoreCredentials count];
      v10 = [(NSMutableIndexSet *)self->_mutableSelectedIndices count];
      v16 = 134218496;
      v17 = a3;
      v18 = 2048;
      v19 = v9;
      v20 = 2048;
      v21 = v10;
      v11 = "Error: Attempting to enable selection of index %lu, within range of (0-%lu). Selected count (%lu). No-Op.";
      v12 = v8;
      v13 = 32;
LABEL_9:
      _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, v11, &v16, v13);
    }
  }

  return v5;
}

- (id)availablePaymentCredentials
{
  v3 = [(PKPaymentSetupAssistantCoreProvisioningContext *)self selectedCredentials];
  v4 = [(PKPaymentProvisioningController *)self->_provisioningController associatedCredentials];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __77__PKPaymentSetupAssistantCoreProvisioningContext_availablePaymentCredentials__block_invoke;
  v8[3] = &unk_1E79C8588;
  v9 = v4;
  v5 = v4;
  v6 = [v3 pk_objectsPassingTest:v8];

  return v6;
}

- (NSIndexSet)selectedIndices
{
  v2 = [(NSMutableIndexSet *)self->_mutableSelectedIndices copy];

  return v2;
}

- (id)selectedCredentials
{
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableIndexSet count](self->_mutableSelectedIndices, "count")}];
  mutableSelectedIndices = self->_mutableSelectedIndices;
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __69__PKPaymentSetupAssistantCoreProvisioningContext_selectedCredentials__block_invoke;
  v11 = &unk_1E79C85B0;
  v12 = v3;
  v13 = self;
  v5 = v3;
  [(NSMutableIndexSet *)mutableSelectedIndices enumerateIndexesUsingBlock:&v8];
  v6 = [v5 copy];

  return v6;
}

void __69__PKPaymentSetupAssistantCoreProvisioningContext_selectedCredentials__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v4 = [*(*(a1 + 40) + 24) objectAtIndexedSubscript:a2];
  v3 = [v4 credential];
  [v2 addObject:v3];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p setupAssistantCredentials: %@; with selected: %@>", v5, self, self->_setupAssistantCoreCredentials, self->_mutableSelectedIndices];;

  return v6;
}

@end