@interface PARFlightResponse
+ (id)_debugResponseFromReply:(id)a3;
+ (id)responseFromReply:(id)a3;
- (id)description;
@end

@implementation PARFlightResponse

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(PARFlightResponse *)self flightResults];
  v4 = [v2 stringWithFormat:@"flightResults: %@", v3];

  return v4;
}

+ (id)responseFromReply:(id)a3
{
  v3 = a3;
  v4 = [(PARResponse *)[PARFlightResponse alloc] initWithReply:v3];
  v5 = [v3 data];

  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x1E69CA5D0]);
    v7 = [v3 data];
    v8 = [v6 initWithData:v7];

    v9 = [objc_alloc(MEMORY[0x1E69C9E78]) initWithProtobuf:v8];
    v10 = [v9 flights];
    [(PARFlightResponse *)v4 setFlightResults:v10];
  }

  return v4;
}

+ (id)_debugResponseFromReply:(id)a3
{
  v3 = a3;
  v4 = [(PARResponse *)[PARFlightResponse alloc] initWithReply:v3];
  v5 = [v3 rawResponse];

  if (v5)
  {
    v6 = [v5 parsec_mapObjectsUsingBlock:&__block_literal_global_208];
    flightResults = v4->_flightResults;
    v4->_flightResults = v6;
  }

  return v4;
}

@end