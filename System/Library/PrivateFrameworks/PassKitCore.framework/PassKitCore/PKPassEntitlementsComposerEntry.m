@interface PKPassEntitlementsComposerEntry
- (BOOL)isEqual:(id)a3;
- (PKDisplayablePassEntitlement)displayableEntitlement;
- (id)initWithDisplayableEntitlement:(void *)a3 parentEntitlementComposer:;
@end

@implementation PKPassEntitlementsComposerEntry

- (id)initWithDisplayableEntitlement:(void *)a3 parentEntitlementComposer:
{
  v6 = a2;
  v7 = a3;
  if (a1)
  {
    v10.receiver = a1;
    v10.super_class = PKPassEntitlementsComposerEntry;
    v8 = objc_msgSendSuper2(&v10, sel_init);
    a1 = v8;
    if (v8)
    {
      objc_storeStrong(v8 + 2, a2);
      objc_storeWeak(a1 + 1, v7);
    }
  }

  return a1;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    sharedEntitlement = self->_sharedEntitlement;
    v7 = v5[3];
    if (sharedEntitlement && v7)
    {
      if ([(PKPassSharedEntitlement *)sharedEntitlement isEqual:?])
      {
LABEL_5:
        displayableEntitlement = self->_displayableEntitlement;
        v9 = v5[2];
        if (displayableEntitlement && v9)
        {
          v10 = [(PKDisplayablePassEntitlement *)displayableEntitlement isEqual:?];
        }

        else
        {
          v10 = displayableEntitlement == v9;
        }

        goto LABEL_12;
      }
    }

    else if (sharedEntitlement == v7)
    {
      goto LABEL_5;
    }

    v10 = 0;
LABEL_12:

    goto LABEL_13;
  }

  v10 = 0;
LABEL_13:

  return v10;
}

- (PKDisplayablePassEntitlement)displayableEntitlement
{
  v2 = [(PKDisplayablePassEntitlement *)self->_displayableEntitlement copy];

  return v2;
}

@end