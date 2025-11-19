@interface AMRLocalUSBInterface
- (AMRLocalUSBInterface)initWithService:(unsigned int)a3;
- (void)dealloc;
- (void)getDFUInformationWithReply:(id)a3;
- (void)getFileTransferPipeWithReply:(id)a3;
- (void)getPipesWithReply:(id)a3;
- (void)openInterfaceWithReply:(id)a3;
@end

@implementation AMRLocalUSBInterface

- (AMRLocalUSBInterface)initWithService:(unsigned int)a3
{
  v7.receiver = self;
  v7.super_class = AMRLocalUSBInterface;
  v4 = [(AMRLocalUSBInterface *)&v7 init];
  if (v4)
  {
    InterfaceInterfaceForService = _getInterfaceInterfaceForService(a3);
    v4->interfaceInterface = InterfaceInterfaceForService;
    if (!InterfaceInterfaceForService)
    {

      return 0;
    }
  }

  return v4;
}

- (void)dealloc
{
  interfaceInterface = self->interfaceInterface;
  if (interfaceInterface)
  {
    ((*interfaceInterface)->Release)(interfaceInterface, a2);
    self->interfaceInterface = 0;
  }

  v4.receiver = self;
  v4.super_class = AMRLocalUSBInterface;
  [(AMRLocalUSBInterface *)&v4 dealloc];
}

- (void)openInterfaceWithReply:(id)a3
{
  v4 = ((*self->interfaceInterface)->USBInterfaceOpen)(self->interfaceInterface, a2);
  v11 = v4;
  if (v4)
  {
    v12 = createAndLogUSBError(v4, @"error opening USB interface: 0x%x", v5, v6, v7, v8, v9, v10, v4);
  }

  else
  {
    v12 = 0;
  }

  v13 = _AMRestoreErrorForIOReturn(v11, 2002);
  v14 = *(a3 + 2);

  v14(a3, v13, v12);
}

- (void)getFileTransferPipeWithReply:(id)a3
{
  v33 = 0;
  v5 = ((*self->interfaceInterface)->GetNumEndpoints)(self->interfaceInterface, &v33);
  if (v5)
  {
    v12 = v5;
    v13 = createAndLogUSBError(v5, @"error getting number of endpoints: 0x%x", v6, v7, v8, v9, v10, v11, v5);
    v14 = _AMRestoreErrorForIOReturn(v12, 2010);
    (*(a3 + 2))(a3, v14, 0, 0, v13);
  }

  else
  {
    if (v33)
    {
      v15 = 1;
      while (1)
      {
        v32 = 0;
        v31 = 0;
        v30 = 0;
        v29 = 0;
        v16 = ((*self->interfaceInterface)->GetPipeProperties)(self->interfaceInterface, v15, &v32, &v31 + 1, &v31, &v29, &v30);
        v23 = v16;
        if (v16)
        {
          v26 = createAndLogUSBError(v16, @"error getting information for pipe %d: 0x%x", v17, v18, v19, v20, v21, v22, v15);
          v27 = 0;
          goto LABEL_14;
        }

        if (v31 == 2 && v32 == 0)
        {
          break;
        }

        v25 = v15 >= v33;
        v15 = (v15 + 1);
        if (v25)
        {
          goto LABEL_12;
        }
      }

      v26 = 0;
      v27 = v29;
    }

    else
    {
LABEL_12:
      v26 = 0;
      v27 = 0;
      v23 = 0;
LABEL_14:
      LOBYTE(v15) = -1;
    }

    v28 = _AMRestoreErrorForIOReturn(v23, 2010);
    (*(a3 + 2))(a3, v28, v15, v27, v26);
  }
}

- (void)getPipesWithReply:(id)a3
{
  v39 = 0;
  v5 = ((*self->interfaceInterface)->GetNumEndpoints)(self->interfaceInterface, &v39);
  if (v5)
  {
    v12 = v5;
    v13 = createAndLogUSBError(v5, @"error getting number of endpoints: 0x%x", v6, v7, v8, v9, v10, v11, v5);
    v14 = _AMRestoreErrorForIOReturn(v12, 2010);
    (*(a3 + 2))(a3, v14, 255, 255, 255, 255, 255, v13);
  }

  else
  {
    if (v39)
    {
      v15 = 1;
      v16 = 255;
      v17 = 255;
      v18 = -1;
      v19 = 255;
      v20 = -1;
      while (1)
      {
        v38 = 0;
        v37 = 0;
        v36 = 0;
        v35 = 0;
        v21 = ((*self->interfaceInterface)->GetPipeProperties)(self->interfaceInterface, v15, &v38, &v37 + 1, &v37, &v35, &v36);
        if (v21)
        {
          break;
        }

        if (v37 == 3)
        {
          if (v38 | ~v19)
          {
            v28 = v19;
          }

          else
          {
            v28 = v15;
          }

          if (v38 == 1 && ~v20 == 0)
          {
            v20 = v15;
          }

          else
          {
            v19 = v28;
          }
        }

        else if (v37 == 2)
        {
          if (v38 == 1 && v18 == 0xFF)
          {
            v18 = v15;
          }

          else
          {
            if (v16 == 0xFF)
            {
              v30 = v15;
            }

            else
            {
              v30 = v16;
            }

            if (v17 == 0xFF)
            {
              v31 = v15;
            }

            else
            {
              v31 = v17;
            }

            if (v17 == 0xFF)
            {
              v30 = v16;
            }

            if (!v38)
            {
              v17 = v31;
              v16 = v30;
            }
          }
        }

        v32 = v15 >= v39;
        v15 = (v15 + 1);
        if (v32)
        {
          v33 = 0;
          goto LABEL_35;
        }
      }

      v33 = v21;
      createAndLogUSBError(v21, @"error getting information for pipe %d: 0x%x", v22, v23, v24, v25, v26, v27, v15);
    }

    else
    {
      v33 = 0;
      v20 = -1;
      LOBYTE(v19) = -1;
      v18 = -1;
      LOBYTE(v17) = -1;
      LOBYTE(v16) = -1;
    }

LABEL_35:
    v34 = _AMRestoreErrorForIOReturn(v33, 2010);
    (*(a3 + 2))(a3, v34, v20, v19, v18, v17, v16, 0);
  }
}

- (void)getDFUInformationWithReply:(id)a3
{
  v9 = 0;
  v5 = ((*self->interfaceInterface)->FindNextAssociatedDescriptor)(self->interfaceInterface, 0, 33);
  if (v5)
  {
    v6 = *(v5 + 5);
    v7 = *(v5 + 2);
    ((*self->interfaceInterface)->GetInterfaceNumber)(self->interfaceInterface, &v9);
    (*(a3 + 2))(a3, 0, v6, v7, v9, 0);
  }

  else
  {
    v8 = *(a3 + 2);

    v8(a3, 2010, 0, 0, 0, 0);
  }
}

@end