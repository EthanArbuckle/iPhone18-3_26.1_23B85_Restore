@interface DMIncident
+ (id)incidentWithKind:(unsigned int)a3 responsiblePluginRep:(id)a4 userDataDisposition:(id)a5 details:(id)a6;
@end

@implementation DMIncident

+ (id)incidentWithKind:(unsigned int)a3 responsiblePluginRep:(id)a4 userDataDisposition:(id)a5 details:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = objc_alloc_init(DMIncident);
  v13->_kind = a3;
  objc_storeStrong(&v13->_responsiblePluginRep, a4);
  v14 = [v12 copy];
  details = v13->_details;
  v13->_details = v14;

  v16 = +[NSDate date];
  date = v13->_date;
  v13->_date = v16;

  v18 = objc_alloc_init(NSMutableArray);
  v19 = v18;
  if (v12)
  {
    [v18 addObject:v12];
  }

  if (v11)
  {
    v20 = [DMUserDataDispositionManager descriptionFromDispositionFlags:[DMUserDataDispositionManager dispositionFlagsFromDispositionDict:v11]];
    if (v20)
    {
      v21 = [NSString stringWithFormat:@"(%@)", v20];
      [v19 addObject:v21];
    }

    v22 = [v11 objectForKeyedSubscript:@"previousBuildVersion"];
    if (v22)
    {
      v23 = [NSString stringWithFormat:@"(prev build %@)", v22];
      [v19 addObject:v23];
    }
  }

  v24 = [v19 componentsJoinedByString:@" "];
  diagnosticMessage = v13->_diagnosticMessage;
  v13->_diagnosticMessage = v24;

  return v13;
}

@end