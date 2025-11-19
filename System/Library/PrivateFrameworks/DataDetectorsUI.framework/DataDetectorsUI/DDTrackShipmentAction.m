@interface DDTrackShipmentAction
- (DDTrackShipmentAction)initWithURL:(id)a3 result:(__DDResult *)a4 context:(id)a5;
- (id)notificationTitle;
- (id)quickActionTitle;
- (void)performFromView:(id)a3;
@end

@implementation DDTrackShipmentAction

- (DDTrackShipmentAction)initWithURL:(id)a3 result:(__DDResult *)a4 context:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (!v8 && a4)
  {
    v8 = DDShipmentTrackingUrlForResult();
  }

  v12.receiver = self;
  v12.super_class = DDTrackShipmentAction;
  v10 = [(DDAction *)&v12 initWithURL:v8 result:a4 context:v9];

  return v10;
}

- (id)quickActionTitle
{
  v26 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v3 = [(NSDictionary *)self->super._context objectForKeyedSubscript:@"AllResults", 0];
  v4 = [v3 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (!v4)
  {
    goto LABEL_14;
  }

  v5 = v4;
  v6 = 0;
  v7 = *v22;
  v8 = *MEMORY[0x277D041B0];
LABEL_4:
  v9 = 0;
  while (1)
  {
    if (*v22 != v7)
    {
      objc_enumerationMutation(v3);
    }

    v10 = *(*(&v21 + 1) + 8 * v9);
    if (!DDResultHasType())
    {
      goto LABEL_5;
    }

    if (v6)
    {
      break;
    }

    v6 = 1;
LABEL_5:
    if (v5 == ++v9)
    {
      v5 = [v3 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (!v5)
      {
        goto LABEL_14;
      }

      goto LABEL_4;
    }
  }

  v11 = self->super._result;
  if (DDResultHasType())
  {
    SubResults = DDResultGetSubResults();
    if (CFArrayGetCount(SubResults) == 1)
    {
      CFArrayGetValueAtIndex(SubResults, 0);
      v13 = DDResultGetMatchedString();
      v14 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"];
      v15 = [v14 invertedSet];
      v16 = [v13 componentsSeparatedByCharactersInSet:v15];
      v17 = [v16 componentsJoinedByString:&stru_282C1E0A8];

      v18 = v17;
      goto LABEL_15;
    }
  }

LABEL_14:

  v18 = [(DDTrackShipmentAction *)self localizedName];
LABEL_15:
  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (void)performFromView:(id)a3
{
  if (self->super._url)
  {
    [(DDAction *)self _performFromView:a3 byOpeningURL:?];
  }
}

- (id)notificationTitle
{
  v3 = MEMORY[0x277CCACA8];
  v4 = DDLocalizedString(@"Track shipment “%@” in Safari");
  v5 = self->super._result;
  v6 = [v3 stringWithFormat:v4, DDResultGetMatchedString()];

  return v6;
}

@end