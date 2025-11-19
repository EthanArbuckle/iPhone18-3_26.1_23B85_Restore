@interface MSPRidesharingInformationSource
- (MSPRidesharingInformationSource)initWithStartWaypoint:(id)a3 endWaypoint:(id)a4;
@end

@implementation MSPRidesharingInformationSource

- (MSPRidesharingInformationSource)initWithStartWaypoint:(id)a3 endWaypoint:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = MSPRidesharingInformationSource;
  v8 = [(MSPRidesharingInformationSource *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    startWaypoint = v8->_startWaypoint;
    v8->_startWaypoint = v9;

    v11 = [v7 copy];
    endWaypoint = v8->_endWaypoint;
    v8->_endWaypoint = v11;
  }

  return v8;
}

@end