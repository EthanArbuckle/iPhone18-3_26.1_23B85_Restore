@interface FHTransaction
+ (id)_allowedCountryNamesForMapsMerchant;
+ (id)fhProperties;
- (BOOL)bankConnectTransactionHasBeenUpdatedFrom:(id)from;
- (BOOL)hasLocation;
- (BOOL)isEqual:(id)equal;
- (FHTransaction)initWithCoder:(id)coder;
- (FHTransaction)initWithDictionary:(id)dictionary;
- (FHTransaction)initWithDictionary:(id)dictionary dateFormatter:(id)formatter;
- (FHTransaction)initWithJsonString:(id)string;
- (id)description;
- (id)toDictionary;
- (id)toJson:(id)json;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FHTransaction

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(FHTransaction *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  transactionServiceIdentifier = [(FHTransaction *)self transactionServiceIdentifier];
  [coderCopy encodeObject:transactionServiceIdentifier forKey:@"serviceIdentifier"];

  financeAccountIdentifier = [(FHTransaction *)self financeAccountIdentifier];
  [coderCopy encodeObject:financeAccountIdentifier forKey:@"financeAccountIdentifier"];

  financeTransactionIdentifier = [(FHTransaction *)self financeTransactionIdentifier];
  [coderCopy encodeObject:financeTransactionIdentifier forKey:@"financeTransactionIdentifier"];

  financeTransactionSharedIdentifier = [(FHTransaction *)self financeTransactionSharedIdentifier];
  [coderCopy encodeObject:financeTransactionSharedIdentifier forKey:@"financeTransactionSharedIdentifier"];

  [coderCopy encodeInteger:-[FHTransaction financeTransactionSource](self forKey:{"financeTransactionSource"), @"financeTransactionSource"}];
  paymentHash = [(FHTransaction *)self paymentHash];
  [coderCopy encodeObject:paymentHash forKey:@"paymentHash"];

  amount = [(FHTransaction *)self amount];
  [coderCopy encodeObject:amount forKey:@"amount"];

  currencyCode = [(FHTransaction *)self currencyCode];
  [coderCopy encodeObject:currencyCode forKey:@"currencyCode"];

  transactionDate = [(FHTransaction *)self transactionDate];
  [coderCopy encodeObject:transactionDate forKey:@"transactionDate"];

  transactionStatusChangedDate = [(FHTransaction *)self transactionStatusChangedDate];
  [coderCopy encodeObject:transactionStatusChangedDate forKey:@"transactionStatusChangedDate"];

  transactionSourceIdentifier = [(FHTransaction *)self transactionSourceIdentifier];
  [coderCopy encodeObject:transactionSourceIdentifier forKey:@"transactionSourceIdentifier"];

  [coderCopy encodeInteger:-[FHTransaction transactionStatus](self forKey:{"transactionStatus"), @"transactionStatus"}];
  [coderCopy encodeInteger:-[FHTransaction transactionSource](self forKey:{"transactionSource"), @"transactionSource"}];
  [coderCopy encodeInteger:-[FHTransaction cardType](self forKey:{"cardType"), @"cardType"}];
  [coderCopy encodeInteger:-[FHTransaction transactionType](self forKey:{"transactionType"), @"transactionType"}];
  [coderCopy encodeInteger:-[FHTransaction transactionInternalState](self forKey:{"transactionInternalState"), @"transactionInternalState"}];
  [coderCopy encodeInteger:-[FHTransaction accountType](self forKey:{"accountType"), @"accountType"}];
  timeZone = [(FHTransaction *)self timeZone];
  [coderCopy encodeObject:timeZone forKey:@"timeZone"];

  altDSID = [(FHTransaction *)self altDSID];
  [coderCopy encodeObject:altDSID forKey:@"altDSID"];

  receiptIdentifier = [(FHTransaction *)self receiptIdentifier];
  [coderCopy encodeObject:receiptIdentifier forKey:@"receiptIdentifier"];

  associatedReceiptUniqueID = [(FHTransaction *)self associatedReceiptUniqueID];
  [coderCopy encodeObject:associatedReceiptUniqueID forKey:@"associatedReceiptUniqueID"];

  merchantUniqueIdentifier = [(FHTransaction *)self merchantUniqueIdentifier];
  [coderCopy encodeObject:merchantUniqueIdentifier forKey:@"merchantUniqueIdentifier"];

  name = [(FHTransaction *)self name];
  [coderCopy encodeObject:name forKey:@"name"];

  rawName = [(FHTransaction *)self rawName];
  [coderCopy encodeObject:rawName forKey:@"rawName"];

  displayName = [(FHTransaction *)self displayName];
  [coderCopy encodeObject:displayName forKey:@"displayName"];

  industryCategory = [(FHTransaction *)self industryCategory];
  [coderCopy encodeObject:industryCategory forKey:@"industryCategory"];

  [coderCopy encodeInteger:-[FHTransaction industryCode](self forKey:{"industryCode"), @"industryCode"}];
  [coderCopy encodeInteger:-[FHTransaction category](self forKey:{"category"), @"category"}];
  street = [(FHTransaction *)self street];
  [coderCopy encodeObject:street forKey:@"street"];

  city = [(FHTransaction *)self city];
  [coderCopy encodeObject:city forKey:@"city"];

  state = [(FHTransaction *)self state];
  [coderCopy encodeObject:state forKey:@"state"];

  v28 = [(FHTransaction *)self zip];
  [coderCopy encodeObject:v28 forKey:@"zip"];

  countryCode = [(FHTransaction *)self countryCode];
  [coderCopy encodeObject:countryCode forKey:@"countryCode"];

  country = [(FHTransaction *)self country];
  [coderCopy encodeObject:country forKey:@"country"];

  merchantDetailedCategory = [(FHTransaction *)self merchantDetailedCategory];
  [coderCopy encodeObject:merchantDetailedCategory forKey:@"merchantDetailedCategory"];

  [coderCopy encodeInt64:-[FHTransaction mapsMerchantID](self forKey:{"mapsMerchantID"), @"mapsMerchantID"}];
  [coderCopy encodeInt32:-[FHTransaction mapsMerchantResultProviderID](self forKey:{"mapsMerchantResultProviderID"), @"mapsMerchantResultProviderID"}];
  [coderCopy encodeInt64:-[FHTransaction mapsMerchantBrandID](self forKey:{"mapsMerchantBrandID"), @"mapsMerchantBrandID"}];
  [coderCopy encodeInt32:-[FHTransaction mapsMerchantBrandResultProviderID](self forKey:{"mapsMerchantBrandResultProviderID"), @"mapsMerchantBrandResultProviderID"}];
  [coderCopy encodeBool:-[FHTransaction hasLocation](self forKey:{"hasLocation"), @"hasLocation"}];
  location = [(FHTransaction *)self location];
  [coderCopy encodeObject:location forKey:@"location"];

  [coderCopy encodeInteger:-[FHTransaction disputeType](self forKey:{"disputeType"), @"disputeType"}];
  [coderCopy encodeInteger:-[FHTransaction disputeStatus](self forKey:{"disputeStatus"), @"disputeStatus"}];
  peerPaymentCounterpartHandle = [(FHTransaction *)self peerPaymentCounterpartHandle];
  [coderCopy encodeObject:peerPaymentCounterpartHandle forKey:@"peerPaymentCounterpartHandle"];

  [coderCopy encodeInteger:-[FHTransaction peerPaymentType](self forKey:{"peerPaymentType"), @"peerPaymentType"}];
  transactionDescription = [(FHTransaction *)self transactionDescription];
  [coderCopy encodeObject:transactionDescription forKey:@"transactionDescription"];

  processedDescription = [(FHTransaction *)self processedDescription];
  [coderCopy encodeObject:processedDescription forKey:@"processedDescription"];

  [coderCopy encodeBool:-[FHTransaction recurring](self forKey:{"recurring"), @"recurring"}];
  disputeOpenDate = [(FHTransaction *)self disputeOpenDate];
  [coderCopy encodeObject:disputeOpenDate forKey:@"disputeOpenDate"];

  disputeLastUpdatedDate = [(FHTransaction *)self disputeLastUpdatedDate];
  [coderCopy encodeObject:disputeLastUpdatedDate forKey:@"disputeLastUpdatedDate"];

  proprietaryBankTransactionCode = [(FHTransaction *)self proprietaryBankTransactionCode];
  [coderCopy encodeObject:proprietaryBankTransactionCode forKey:@"proprietaryBankTransactionCode"];

  proprietaryBankTransactionIssuer = [(FHTransaction *)self proprietaryBankTransactionIssuer];
  [coderCopy encodeObject:proprietaryBankTransactionIssuer forKey:@"proprietaryBankTransactionIssuer"];
}

- (FHTransaction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v42.receiver = self;
  v42.super_class = FHTransaction;
  v5 = [(FHTransaction *)&v42 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    [(FHTransaction *)v5 setIdentifier:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serviceIdentifier"];
    [(FHTransaction *)v5 setTransactionServiceIdentifier:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"financeAccountIdentifier"];
    [(FHTransaction *)v5 setFinanceAccountIdentifier:v8];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"financeTransactionIdentifier"];
    [(FHTransaction *)v5 setFinanceTransactionIdentifier:v9];

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"financeTransactionSharedIdentifier"];
    [(FHTransaction *)v5 setFinanceTransactionSharedIdentifier:v10];

    -[FHTransaction setFinanceTransactionSource:](v5, "setFinanceTransactionSource:", [coderCopy decodeIntegerForKey:@"financeTransactionSource"]);
    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"paymentHash"];
    [(FHTransaction *)v5 setPaymentHash:v11];

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"amount"];
    [(FHTransaction *)v5 setAmount:v12];

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"currencyCode"];
    [(FHTransaction *)v5 setCurrencyCode:v13];

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"transactionDate"];
    [(FHTransaction *)v5 setTransactionDate:v14];

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"transactionStatusChangedDate"];
    [(FHTransaction *)v5 setTransactionStatusChangedDate:v15];

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"transactionSourceIdentifier"];
    [(FHTransaction *)v5 setTransactionSourceIdentifier:v16];

    -[FHTransaction setTransactionStatus:](v5, "setTransactionStatus:", [coderCopy decodeIntegerForKey:@"transactionStatus"]);
    -[FHTransaction setTransactionSource:](v5, "setTransactionSource:", [coderCopy decodeIntegerForKey:@"transactionSource"]);
    -[FHTransaction setCardType:](v5, "setCardType:", [coderCopy decodeIntegerForKey:@"cardType"]);
    -[FHTransaction setTransactionType:](v5, "setTransactionType:", [coderCopy decodeIntegerForKey:@"transactionType"]);
    -[FHTransaction setAccountType:](v5, "setAccountType:", [coderCopy decodeIntegerForKey:@"accountType"]);
    -[FHTransaction setTransactionInternalState:](v5, "setTransactionInternalState:", [coderCopy decodeIntegerForKey:@"transactionInternalState"]);
    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timeZone"];
    [(FHTransaction *)v5 setTimeZone:v17];

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"altDSID"];
    [(FHTransaction *)v5 setAltDSID:v18];

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"receiptIdentifier"];
    [(FHTransaction *)v5 setReceiptIdentifier:v19];

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"associatedReceiptUniqueID"];
    [(FHTransaction *)v5 setAssociatedReceiptUniqueID:v20];

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"merchantUniqueIdentifier"];
    [(FHTransaction *)v5 setMerchantUniqueIdentifier:v21];

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    [(FHTransaction *)v5 setName:v22];

    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rawName"];
    [(FHTransaction *)v5 setRawName:v23];

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
    [(FHTransaction *)v5 setDisplayName:v24];

    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"industryCategory"];
    [(FHTransaction *)v5 setIndustryCategory:v25];

    -[FHTransaction setIndustryCode:](v5, "setIndustryCode:", [coderCopy decodeIntegerForKey:@"industryCode"]);
    -[FHTransaction setCategory:](v5, "setCategory:", [coderCopy decodeIntegerForKey:@"category"]);
    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"street"];
    [(FHTransaction *)v5 setStreet:v26];

    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"city"];
    [(FHTransaction *)v5 setCity:v27];

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"state"];
    [(FHTransaction *)v5 setState:v28];

    v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"zip"];
    [(FHTransaction *)v5 setZip:v29];

    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"countryCode"];
    [(FHTransaction *)v5 setCountryCode:v30];

    v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"country"];
    [(FHTransaction *)v5 setCountry:v31];

    v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"merchantDetailedCategory"];
    [(FHTransaction *)v5 setMerchantDetailedCategory:v32];

    -[FHTransaction setMapsMerchantID:](v5, "setMapsMerchantID:", [coderCopy decodeInt64ForKey:@"mapsMerchantID"]);
    -[FHTransaction setMapsMerchantResultProviderID:](v5, "setMapsMerchantResultProviderID:", [coderCopy decodeInt32ForKey:@"mapsMerchantResultProviderID"]);
    -[FHTransaction setMapsMerchantBrandID:](v5, "setMapsMerchantBrandID:", [coderCopy decodeInt64ForKey:@"mapsMerchantBrandID"]);
    -[FHTransaction setMapsMerchantBrandResultProviderID:](v5, "setMapsMerchantBrandResultProviderID:", [coderCopy decodeInt32ForKey:@"mapsMerchantBrandResultProviderID"]);
    v33 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"location"];
    [(FHTransaction *)v5 setLocation:v33];

    -[FHTransaction setHasLocation:](v5, "setHasLocation:", [coderCopy decodeBoolForKey:@"hasLocation"]);
    -[FHTransaction setDisputeType:](v5, "setDisputeType:", [coderCopy decodeIntegerForKey:@"disputeType"]);
    -[FHTransaction setDisputeStatus:](v5, "setDisputeStatus:", [coderCopy decodeIntegerForKey:@"disputeStatus"]);
    v34 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"peerPaymentCounterpartHandle"];
    [(FHTransaction *)v5 setPeerPaymentCounterpartHandle:v34];

    -[FHTransaction setPeerPaymentType:](v5, "setPeerPaymentType:", [coderCopy decodeIntegerForKey:@"peerPaymentType"]);
    v35 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"transactionDescription"];
    [(FHTransaction *)v5 setTransactionDescription:v35];

    v36 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"processedDescription"];
    [(FHTransaction *)v5 setProcessedDescription:v36];

    -[FHTransaction setRecurring:](v5, "setRecurring:", [coderCopy decodeBoolForKey:@"recurring"]);
    v37 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"disputeOpenDate"];
    [(FHTransaction *)v5 setDisputeOpenDate:v37];

    v38 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"disputeLastUpdatedDate"];
    [(FHTransaction *)v5 setDisputeLastUpdatedDate:v38];

    v39 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"proprietaryBankTransactionCode"];
    [(FHTransaction *)v5 setProprietaryBankTransactionCode:v39];

    v40 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"proprietaryBankTransactionIssuer"];
    [(FHTransaction *)v5 setProprietaryBankTransactionIssuer:v40];
  }

  return v5;
}

- (unint64_t)hash
{
  identifier = [(FHTransaction *)self identifier];
  v4 = [identifier hash];

  transactionServiceIdentifier = [(FHTransaction *)self transactionServiceIdentifier];
  v6 = [transactionServiceIdentifier hash] - v4 + 32 * v4;

  financeAccountIdentifier = [(FHTransaction *)self financeAccountIdentifier];
  v8 = [financeAccountIdentifier hash] - v6 + 32 * v6;

  financeTransactionIdentifier = [(FHTransaction *)self financeTransactionIdentifier];
  v10 = [financeTransactionIdentifier hash] - v8 + 32 * v8;

  financeTransactionSharedIdentifier = [(FHTransaction *)self financeTransactionSharedIdentifier];
  v12 = [financeTransactionSharedIdentifier hash] - v10 + 32 * v10;

  v13 = [(FHTransaction *)self financeTransactionSource]- v12 + 32 * v12;
  paymentHash = [(FHTransaction *)self paymentHash];
  v15 = [paymentHash hash] - v13 + 32 * v13;

  transactionSourceIdentifier = [(FHTransaction *)self transactionSourceIdentifier];
  v17 = [transactionSourceIdentifier hash] - v15 + 32 * v15;

  amount = [(FHTransaction *)self amount];
  v19 = [amount hash] - v17 + 32 * v17;

  currencyCode = [(FHTransaction *)self currencyCode];
  v21 = [currencyCode hash] - v19 + 32 * v19;

  transactionDate = [(FHTransaction *)self transactionDate];
  v23 = [transactionDate hash] - v21 + 32 * v21;

  transactionStatusChangedDate = [(FHTransaction *)self transactionStatusChangedDate];
  v25 = [transactionStatusChangedDate hash] - v23 + 32 * v23;

  industryCategory = [(FHTransaction *)self industryCategory];
  v27 = [industryCategory hash] - v25 + 32 * v25;

  displayName = [(FHTransaction *)self displayName];
  v29 = [displayName hash] - v27 + 32 * v27;

  merchantUniqueIdentifier = [(FHTransaction *)self merchantUniqueIdentifier];
  v31 = [merchantUniqueIdentifier hash] - v29 + 32 * v29;

  name = [(FHTransaction *)self name];
  v33 = [name hash] - v31 + 32 * v31;

  rawName = [(FHTransaction *)self rawName];
  v35 = [rawName hash] - v33 + 32 * v33;

  v36 = [(FHTransaction *)self industryCode]- v35 + 32 * v35;
  v37 = [(FHTransaction *)self category]- v36 + 32 * v36;
  street = [(FHTransaction *)self street];
  v39 = [street hash] - v37 + 32 * v37;

  city = [(FHTransaction *)self city];
  v41 = [city hash] - v39 + 32 * v39;

  state = [(FHTransaction *)self state];
  v43 = [state hash] - v41 + 32 * v41;

  v44 = [(FHTransaction *)self zip];
  v45 = [v44 hash] - v43 + 32 * v43;

  countryCode = [(FHTransaction *)self countryCode];
  v47 = [countryCode hash] - v45 + 32 * v45;

  altDSID = [(FHTransaction *)self altDSID];
  v49 = [altDSID hash] - v47 + 32 * v47;

  receiptIdentifier = [(FHTransaction *)self receiptIdentifier];
  v51 = [receiptIdentifier hash] - v49 + 32 * v49;

  associatedReceiptUniqueID = [(FHTransaction *)self associatedReceiptUniqueID];
  v53 = [associatedReceiptUniqueID hash] - v51 + 32 * v51;

  country = [(FHTransaction *)self country];
  v55 = [country hash] - v53 + 32 * v53;

  merchantDetailedCategory = [(FHTransaction *)self merchantDetailedCategory];
  v57 = [merchantDetailedCategory hash] - v55 + 32 * v55;

  v58 = [(FHTransaction *)self transactionStatus]- v57 + 32 * v57;
  v59 = [(FHTransaction *)self transactionSource]- v58 + 32 * v58;
  v60 = [(FHTransaction *)self cardType]- v59 + 32 * v59;
  v61 = [(FHTransaction *)self transactionType]- v60 + 32 * v60;
  v62 = [(FHTransaction *)self accountType]- v61 + 32 * v61;
  v63 = [(FHTransaction *)self transactionInternalState]- v62 + 32 * v62;
  timeZone = [(FHTransaction *)self timeZone];
  v65 = [timeZone hash] - v63 + 32 * v63;

  location = [(FHTransaction *)self location];
  v67 = [location hash] - v65 + 32 * v65;

  v68 = 31 * ([(FHTransaction *)self mapsMerchantID]- v67 + 32 * v67);
  v69 = 31 * (v68 + [(FHTransaction *)self mapsMerchantResultProviderID]);
  v70 = v69 + [(FHTransaction *)self hasLocation];
  v71 = [(FHTransaction *)self disputeType]- v70 + 32 * v70;
  v72 = [(FHTransaction *)self disputeStatus]- v71 + 32 * v71;
  peerPaymentCounterpartHandle = [(FHTransaction *)self peerPaymentCounterpartHandle];
  v74 = [peerPaymentCounterpartHandle hash] - v72 + 32 * v72;

  v75 = [(FHTransaction *)self peerPaymentType]- v74 + 32 * v74;
  transactionDescription = [(FHTransaction *)self transactionDescription];
  v77 = [transactionDescription hash] - v75 + 32 * v75;

  processedDescription = [(FHTransaction *)self processedDescription];
  v79 = 31 * ([processedDescription hash] - v77 + 32 * v77);

  v80 = v79 + [(FHTransaction *)self recurring];
  disputeOpenDate = [(FHTransaction *)self disputeOpenDate];
  v82 = [disputeOpenDate hash] - v80 + 32 * v80;

  disputeLastUpdatedDate = [(FHTransaction *)self disputeLastUpdatedDate];
  v84 = [disputeLastUpdatedDate hash] - v82 + 32 * v82;

  proprietaryBankTransactionCode = [(FHTransaction *)self proprietaryBankTransactionCode];
  v86 = [proprietaryBankTransactionCode hash] - v84 + 32 * v84;

  proprietaryBankTransactionIssuer = [(FHTransaction *)self proprietaryBankTransactionIssuer];
  v88 = [proprietaryBankTransactionIssuer hash] - v86 + 32 * v86;

  return v88 + 0x3D05DF62DD89A5FLL;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7 = equalCopy;
  if (equalCopy == self)
  {
    LOBYTE(v18) = 1;
    goto LABEL_305;
  }

  if (!equalCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    LOBYTE(v18) = 0;
    goto LABEL_305;
  }

  identifier = [(FHTransaction *)self identifier];
  if (identifier && ([(FHTransaction *)v7 identifier], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v354 = v8;
    identifier2 = [(FHTransaction *)self identifier];
    [(FHTransaction *)v7 identifier];
    v347 = v348 = identifier2;
    identifier4 = [identifier2 isEqualToString:?];
    v355 = 0;
    v422 = 0;
    v428 = 0;
    v11 = 0;
    v12 = 0;
    v421 = 0;
    v427 = 0;
    LODWORD(v13) = 0;
    v420 = 0;
    v454 = 0;
    v360 = 0;
    v453 = 0;
    v419 = 0;
    v452 = 0;
    v426 = 0;
    v418 = 0;
    v451 = 0;
    v359 = 0;
    v358 = 0;
    v415 = 0;
    v425 = 0;
    v424 = 0;
    v412 = 0;
    v423 = 0;
    v450 = 0;
    v409 = 0;
    v449 = 0;
    v448 = 0;
    v406 = 0;
    v447 = 0;
    v446 = 0;
    v403 = 0;
    v445 = 0;
    v444 = 0;
    v401 = 0;
    v443 = 0;
    v442 = 0;
    v399 = 0;
    v441 = 0;
    v440 = 0;
    v396 = 0;
    v439 = 0;
    v438 = 0;
    v393 = 0;
    v437 = 0;
    v436 = 0;
    v390 = 0;
    v435 = 0;
    v434 = 0;
    v387 = 0;
    v433 = 0;
    v431 = 0;
    v385 = 0;
    v430 = 0;
    v432 = 0;
    v382 = 0;
    v429 = 0;
    v417 = 0;
    v416 = 0;
    v381 = 0;
    v414 = 0;
    v413 = 0;
    v378 = 0;
    v411 = 0;
    v410 = 0;
    v375 = 0;
    v408 = 0;
    v407 = 0;
    v405 = 0;
    v404 = 0;
    v372 = 0;
    v402 = 0;
    v400 = 0;
    v369 = 0;
    v397 = 0;
    v398 = 0;
    v366 = 0;
    v394 = 0;
    v395 = 0;
    v362 = 0;
    v391 = 0;
    v392 = 0;
    v14 = 0;
    v388 = 0;
    v389 = 0;
    v386 = 0;
    v373 = 0;
    v384 = 0;
    v383 = 0;
    v371 = 0;
    v379 = 0;
    v380 = 0;
    v367 = 0;
    v376 = 0;
    v377 = 0;
    v374 = 0;
    v363 = 0;
    v370 = 0;
    v368 = 0;
    v361 = 0;
    v364 = 0;
    v365 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    LOBYTE(v18) = 0;
    v356 = 1;
    if ((identifier4 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else
  {
    identifier3 = [(FHTransaction *)self identifier];
    identifier4 = [(FHTransaction *)v7 identifier];
    v354 = 0;
    v356 = 0;
    v422 = 0;
    v428 = 0;
    v11 = 0;
    v12 = 0;
    v421 = 0;
    v427 = 0;
    LODWORD(v13) = 0;
    v420 = 0;
    v454 = 0;
    v360 = 0;
    v453 = 0;
    v419 = 0;
    v452 = 0;
    v426 = 0;
    v418 = 0;
    v451 = 0;
    v359 = 0;
    v358 = 0;
    v415 = 0;
    v425 = 0;
    v424 = 0;
    v412 = 0;
    v423 = 0;
    v450 = 0;
    v409 = 0;
    v449 = 0;
    v448 = 0;
    v406 = 0;
    v447 = 0;
    v446 = 0;
    v403 = 0;
    v445 = 0;
    v444 = 0;
    v401 = 0;
    v443 = 0;
    v442 = 0;
    v399 = 0;
    v441 = 0;
    v440 = 0;
    v396 = 0;
    v439 = 0;
    v438 = 0;
    v393 = 0;
    v437 = 0;
    v436 = 0;
    v390 = 0;
    v435 = 0;
    v434 = 0;
    v387 = 0;
    v433 = 0;
    v431 = 0;
    v385 = 0;
    v430 = 0;
    v432 = 0;
    v382 = 0;
    v429 = 0;
    v417 = 0;
    v416 = 0;
    v381 = 0;
    v414 = 0;
    v413 = 0;
    v378 = 0;
    v411 = 0;
    v410 = 0;
    v375 = 0;
    v408 = 0;
    v407 = 0;
    v405 = 0;
    v404 = 0;
    v372 = 0;
    v402 = 0;
    v400 = 0;
    v369 = 0;
    v397 = 0;
    v398 = 0;
    v366 = 0;
    v394 = 0;
    v395 = 0;
    v362 = 0;
    v391 = 0;
    v392 = 0;
    v14 = 0;
    v388 = 0;
    v389 = 0;
    v386 = 0;
    v373 = 0;
    v384 = 0;
    v383 = 0;
    v371 = 0;
    v379 = 0;
    v380 = 0;
    v367 = 0;
    v376 = 0;
    v377 = 0;
    v374 = 0;
    v363 = 0;
    v370 = 0;
    v368 = 0;
    v361 = 0;
    v364 = 0;
    v365 = 0;
    v16 = 0;
    v17 = 0;
    LOBYTE(v18) = 0;
    v355 = 1;
    v353 = identifier3;
    v352 = identifier4;
    v20 = identifier3 == identifier4;
    v15 = 0;
    if (!v20)
    {
      goto LABEL_24;
    }
  }

  transactionServiceIdentifier = [(FHTransaction *)self transactionServiceIdentifier];
  v22 = transactionServiceIdentifier != 0;
  v350 = transactionServiceIdentifier;
  if (transactionServiceIdentifier && ([(FHTransaction *)v7 transactionServiceIdentifier], (v23 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v349 = v23;
    transactionServiceIdentifier2 = [(FHTransaction *)self transactionServiceIdentifier];
    [(FHTransaction *)v7 transactionServiceIdentifier];
    v341 = v342 = transactionServiceIdentifier2;
    identifier4 = [transactionServiceIdentifier2 isEqualToString:?];
    v12 = 0;
    v11 = 1;
    if ((identifier4 & 1) == 0)
    {
      v422 = 1;
      v428 = 1;
      v421 = 0;
      v427 = 0;
      LODWORD(v13) = 0;
      v420 = 0;
      v454 = 0;
      v360 = 0;
      v453 = 0;
      v419 = 0;
      v452 = 0;
      v426 = 0;
      v418 = 0;
      v451 = 0;
      v359 = 0;
      v358 = 0;
      v415 = 0;
      v425 = 0;
      v424 = 0;
      v412 = 0;
      v423 = 0;
      v450 = 0;
      v409 = 0;
      v449 = 0;
      v448 = 0;
      v406 = 0;
      v447 = 0;
      v446 = 0;
      v403 = 0;
      v445 = 0;
      v444 = 0;
      v401 = 0;
      v443 = 0;
      v442 = 0;
      v399 = 0;
      v441 = 0;
      v440 = 0;
      v396 = 0;
      v439 = 0;
      v438 = 0;
      v393 = 0;
      v437 = 0;
      v436 = 0;
      v390 = 0;
      v435 = 0;
      v434 = 0;
      v387 = 0;
      v433 = 0;
      v431 = 0;
      v385 = 0;
      v430 = 0;
      v432 = 0;
      v382 = 0;
      v429 = 0;
      v417 = 0;
      v416 = 0;
      v381 = 0;
      v414 = 0;
      v413 = 0;
      v378 = 0;
      v411 = 0;
      v410 = 0;
      v408 = 0;
      v407 = 0;
      v375 = 0;
      v405 = 0;
      v404 = 0;
      v372 = 0;
      v402 = 0;
      v400 = 0;
      v369 = 0;
      v398 = 0;
      v397 = 0;
      v366 = 0;
      v395 = 0;
      v394 = 0;
      v362 = 0;
      v392 = 0;
      v391 = 0;
      v14 = 0;
      v388 = 0;
      v389 = 0;
      v386 = 0;
      v373 = 0;
      v384 = 0;
      v383 = 0;
      v371 = 0;
      v380 = 0;
      v379 = 0;
      v377 = 0;
      v376 = 0;
      v367 = 0;
      v374 = 0;
      v363 = 0;
      v370 = 0;
      v368 = 0;
      v365 = 0;
      v364 = 0;
      v361 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      LOBYTE(v18) = 0;
      goto LABEL_24;
    }
  }

  else
  {
    transactionServiceIdentifier3 = [(FHTransaction *)self transactionServiceIdentifier];
    identifier4 = [(FHTransaction *)v7 transactionServiceIdentifier];
    v11 = 0;
    v349 = 0;
    v12 = 1;
    v346 = transactionServiceIdentifier3;
    v345 = identifier4;
    if (transactionServiceIdentifier3 != identifier4)
    {
      v428 = v22;
      v422 = 1;
      v421 = 0;
      v427 = 0;
      LODWORD(v13) = 0;
      v420 = 0;
      v454 = 0;
      v360 = 0;
      v453 = 0;
      v419 = 0;
      v452 = 0;
      v426 = 0;
      v418 = 0;
      v451 = 0;
      v359 = 0;
      v358 = 0;
      v415 = 0;
      v425 = 0;
      v424 = 0;
      v412 = 0;
      v423 = 0;
      v450 = 0;
      v409 = 0;
      v449 = 0;
      v448 = 0;
      v406 = 0;
      v447 = 0;
      v446 = 0;
      v403 = 0;
      v445 = 0;
      v444 = 0;
      v401 = 0;
      v443 = 0;
      v442 = 0;
      v399 = 0;
      v441 = 0;
      v440 = 0;
      v396 = 0;
      v439 = 0;
      v438 = 0;
      v393 = 0;
      v437 = 0;
      v436 = 0;
      v390 = 0;
      v435 = 0;
      v434 = 0;
      v387 = 0;
      v433 = 0;
      v431 = 0;
      v385 = 0;
      v430 = 0;
      v432 = 0;
      v382 = 0;
      v429 = 0;
      v417 = 0;
      v416 = 0;
      v381 = 0;
      v414 = 0;
      v413 = 0;
      v378 = 0;
      v411 = 0;
      v410 = 0;
      v408 = 0;
      v407 = 0;
      v375 = 0;
      v405 = 0;
      v404 = 0;
      v372 = 0;
      v402 = 0;
      v400 = 0;
      v369 = 0;
      v398 = 0;
      v397 = 0;
      v366 = 0;
      v395 = 0;
      v394 = 0;
      v362 = 0;
      v392 = 0;
      v391 = 0;
      v14 = 0;
      v388 = 0;
      v389 = 0;
      v386 = 0;
      v373 = 0;
      v384 = 0;
      v383 = 0;
      v371 = 0;
      v380 = 0;
      v379 = 0;
      v377 = 0;
      v376 = 0;
      v367 = 0;
      v374 = 0;
      v363 = 0;
      v370 = 0;
      v368 = 0;
      v365 = 0;
      v364 = 0;
      v361 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      LOBYTE(v18) = 0;
      goto LABEL_24;
    }
  }

  financeAccountIdentifier = [(FHTransaction *)self financeAccountIdentifier];
  transactionServiceIdentifier3 = financeAccountIdentifier != 0;
  v344 = financeAccountIdentifier;
  v428 = v22;
  if (financeAccountIdentifier && ([(FHTransaction *)v7 financeAccountIdentifier], (v26 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v343 = v26;
    financeAccountIdentifier2 = [(FHTransaction *)self financeAccountIdentifier];
    [(FHTransaction *)v7 financeAccountIdentifier];
    v335 = v336 = financeAccountIdentifier2;
    identifier4 = [financeAccountIdentifier2 isEqualToString:?];
    v18 = 0;
    v13 = 1;
    if ((identifier4 & 1) == 0)
    {
      v422 = 1;
      v421 = 1;
      v420 = 0;
      v454 = 0;
      v360 = 0;
      v453 = 0;
      v419 = 0;
      v452 = 0;
      v426 = 0;
      v418 = 0;
      v451 = 0;
      v359 = 0;
      v358 = 0;
      v415 = 0;
      v425 = 0;
      v424 = 0;
      v412 = 0;
      v423 = 0;
      v450 = 0;
      v409 = 0;
      v449 = 0;
      v448 = 0;
      v406 = 0;
      v447 = 0;
      v446 = 0;
      v403 = 0;
      v445 = 0;
      v444 = 0;
      v401 = 0;
      v443 = 0;
      v442 = 0;
      v399 = 0;
      v441 = 0;
      v440 = 0;
      v396 = 0;
      v439 = 0;
      v438 = 0;
      v393 = 0;
      v437 = 0;
      v436 = 0;
      v390 = 0;
      v435 = 0;
      v434 = 0;
      v387 = 0;
      v433 = 0;
      v431 = 0;
      v385 = 0;
      v430 = 0;
      v432 = 0;
      v382 = 0;
      v429 = 0;
      v417 = 0;
      v416 = 0;
      v381 = 0;
      v414 = 0;
      v413 = 0;
      v378 = 0;
      v411 = 0;
      v410 = 0;
      v408 = 0;
      v407 = 0;
      v375 = 0;
      v405 = 0;
      v404 = 0;
      v372 = 0;
      v402 = 0;
      v400 = 0;
      v369 = 0;
      v398 = 0;
      v397 = 0;
      v366 = 0;
      v395 = 0;
      v394 = 0;
      v362 = 0;
      v392 = 0;
      v391 = 0;
      v14 = 0;
      v388 = 0;
      v389 = 0;
      v386 = 0;
      v373 = 0;
      v384 = 0;
      v383 = 0;
      v371 = 0;
      v380 = 0;
      v379 = 0;
      v377 = 0;
      v376 = 0;
      v367 = 0;
      v374 = 0;
      v363 = 0;
      v370 = 0;
      v368 = 0;
      v365 = 0;
      v364 = 0;
      v361 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v427 = 0x100000000;
      goto LABEL_24;
    }
  }

  else
  {
    financeAccountIdentifier2 = [(FHTransaction *)self financeAccountIdentifier];
    identifier4 = [(FHTransaction *)v7 financeAccountIdentifier];
    v13 = 0;
    v343 = 0;
    v18 = 1;
    v340 = financeAccountIdentifier2;
    v339 = identifier4;
    if (financeAccountIdentifier2 != identifier4)
    {
      LODWORD(v427) = 1;
      HIDWORD(v427) = transactionServiceIdentifier3;
      v422 = 1;
      v421 = 1;
      v420 = 0;
      v454 = 0;
      v360 = 0;
      v453 = 0;
      v419 = 0;
      v452 = 0;
      v426 = 0;
      v418 = 0;
      v451 = 0;
      v359 = 0;
      v358 = 0;
      v415 = 0;
      v425 = 0;
      v424 = 0;
      v412 = 0;
      v423 = 0;
      v450 = 0;
      v409 = 0;
      v449 = 0;
      v448 = 0;
      v406 = 0;
      v447 = 0;
      v446 = 0;
      v403 = 0;
      v445 = 0;
      v444 = 0;
      v401 = 0;
      v443 = 0;
      v442 = 0;
      v399 = 0;
      v441 = 0;
      v440 = 0;
      v396 = 0;
      v439 = 0;
      v438 = 0;
      v393 = 0;
      v437 = 0;
      v436 = 0;
      v390 = 0;
      v435 = 0;
      v434 = 0;
      v387 = 0;
      v433 = 0;
      v431 = 0;
      v385 = 0;
      v430 = 0;
      v432 = 0;
      v382 = 0;
      v429 = 0;
      v417 = 0;
      v416 = 0;
      v381 = 0;
      v414 = 0;
      v413 = 0;
      v378 = 0;
      v411 = 0;
      v410 = 0;
      v408 = 0;
      v407 = 0;
      v375 = 0;
      v405 = 0;
      v404 = 0;
      v372 = 0;
      v402 = 0;
      v400 = 0;
      v369 = 0;
      v398 = 0;
      v397 = 0;
      v366 = 0;
      v395 = 0;
      v394 = 0;
      v362 = 0;
      v392 = 0;
      v391 = 0;
      v14 = 0;
      v388 = 0;
      v389 = 0;
      v386 = 0;
      v373 = 0;
      v384 = 0;
      v383 = 0;
      v371 = 0;
      v380 = 0;
      v379 = 0;
      v377 = 0;
      v376 = 0;
      v367 = 0;
      v374 = 0;
      v363 = 0;
      v370 = 0;
      v368 = 0;
      v365 = 0;
      v364 = 0;
      v361 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      LOBYTE(v18) = 0;
      goto LABEL_24;
    }
  }

  financeTransactionIdentifier = [(FHTransaction *)self financeTransactionIdentifier];
  v454 = financeTransactionIdentifier != 0;
  v338 = financeTransactionIdentifier;
  v427 = __PAIR64__(transactionServiceIdentifier3, v18);
  if (financeTransactionIdentifier && ([(FHTransaction *)v7 financeTransactionIdentifier], (v30 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v337 = v30;
    [(FHTransaction *)self financeTransactionIdentifier];
    v13 = financeAccountIdentifier2 = v13;
    financeTransactionIdentifier2 = [(FHTransaction *)v7 financeTransactionIdentifier];
    v330 = v13;
    v32 = v13;
    LODWORD(v13) = financeAccountIdentifier2;
    v329 = financeTransactionIdentifier2;
    identifier4 = [v32 isEqualToString:?];
    v453 = 0;
    v33 = 1;
    if ((identifier4 & 1) == 0)
    {
      v360 = 1;
      v422 = 1;
      v421 = 1;
      v420 = 1;
      v454 = 1;
      LOBYTE(v18) = 0;
      v419 = 0;
      v452 = 0;
      v426 = 0;
      v418 = 0;
      v451 = 0;
      v359 = 0;
      v358 = 0;
      v415 = 0;
      v425 = 0;
      v424 = 0;
      v412 = 0;
      v423 = 0;
      v450 = 0;
      v409 = 0;
      v449 = 0;
      v448 = 0;
      v406 = 0;
      v447 = 0;
      v446 = 0;
      v403 = 0;
      v445 = 0;
      v444 = 0;
      v401 = 0;
      v443 = 0;
      v442 = 0;
      v399 = 0;
      v441 = 0;
      v440 = 0;
      v396 = 0;
      v439 = 0;
      v438 = 0;
      v393 = 0;
      v437 = 0;
      v436 = 0;
      v390 = 0;
      v435 = 0;
      v434 = 0;
      v387 = 0;
      v433 = 0;
      v431 = 0;
      v385 = 0;
      v430 = 0;
      v432 = 0;
      v382 = 0;
      v429 = 0;
      v417 = 0;
      v416 = 0;
      v381 = 0;
      v414 = 0;
      v413 = 0;
      v378 = 0;
      v411 = 0;
      v410 = 0;
      v408 = 0;
      v407 = 0;
      v375 = 0;
      v405 = 0;
      v404 = 0;
      v372 = 0;
      v402 = 0;
      v400 = 0;
      v369 = 0;
      v398 = 0;
      v397 = 0;
      v366 = 0;
      v395 = 0;
      v394 = 0;
      v362 = 0;
      v392 = 0;
      v391 = 0;
      v14 = 0;
      v388 = 0;
      v389 = 0;
      v386 = 0;
      v373 = 0;
      v384 = 0;
      v383 = 0;
      v371 = 0;
      v380 = 0;
      v379 = 0;
      v377 = 0;
      v376 = 0;
      v367 = 0;
      v374 = 0;
      v363 = 0;
      v370 = 0;
      v368 = 0;
      v365 = 0;
      v364 = 0;
      v361 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      goto LABEL_24;
    }
  }

  else
  {
    financeAccountIdentifier2 = [(FHTransaction *)self financeTransactionIdentifier];
    identifier4 = [(FHTransaction *)v7 financeTransactionIdentifier];
    v33 = 0;
    v337 = 0;
    v453 = 1;
    v334 = financeAccountIdentifier2;
    v333 = identifier4;
    if (financeAccountIdentifier2 != identifier4)
    {
      v422 = 1;
      v421 = 1;
      v420 = 1;
      v419 = 0;
      v452 = 0;
      v426 = 0;
      v418 = 0;
      v451 = 0;
      v359 = 0;
      v358 = 0;
      v415 = 0;
      v425 = 0;
      v424 = 0;
      v412 = 0;
      v423 = 0;
      v450 = 0;
      v409 = 0;
      v449 = 0;
      v448 = 0;
      v406 = 0;
      v447 = 0;
      v446 = 0;
      v403 = 0;
      v445 = 0;
      v444 = 0;
      v401 = 0;
      v443 = 0;
      v442 = 0;
      v399 = 0;
      v441 = 0;
      v440 = 0;
      v396 = 0;
      v439 = 0;
      v438 = 0;
      v393 = 0;
      v437 = 0;
      v436 = 0;
      v390 = 0;
      v435 = 0;
      v434 = 0;
      v387 = 0;
      v433 = 0;
      v431 = 0;
      v385 = 0;
      v430 = 0;
      v432 = 0;
      v382 = 0;
      v429 = 0;
      v417 = 0;
      v416 = 0;
      v381 = 0;
      v414 = 0;
      v413 = 0;
      v378 = 0;
      v411 = 0;
      v410 = 0;
      v408 = 0;
      v407 = 0;
      v375 = 0;
      v405 = 0;
      v404 = 0;
      v372 = 0;
      v402 = 0;
      v400 = 0;
      v369 = 0;
      v398 = 0;
      v397 = 0;
      v366 = 0;
      v395 = 0;
      v394 = 0;
      v362 = 0;
      v392 = 0;
      v391 = 0;
      v14 = 0;
      v388 = 0;
      v389 = 0;
      v386 = 0;
      v373 = 0;
      v384 = 0;
      v383 = 0;
      v371 = 0;
      v380 = 0;
      v379 = 0;
      v377 = 0;
      v376 = 0;
      v367 = 0;
      v374 = 0;
      v363 = 0;
      v370 = 0;
      v368 = 0;
      v365 = 0;
      v364 = 0;
      v361 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v360 = 0;
      LOBYTE(v18) = 0;
      goto LABEL_24;
    }
  }

  v360 = v33;
  financeTransactionSharedIdentifier = [(FHTransaction *)self financeTransactionSharedIdentifier];
  LODWORD(v452) = financeTransactionSharedIdentifier != 0;
  v332 = financeTransactionSharedIdentifier;
  if (financeTransactionSharedIdentifier && ([(FHTransaction *)v7 financeTransactionSharedIdentifier], (v35 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v331 = v35;
    financeTransactionSharedIdentifier2 = [(FHTransaction *)self financeTransactionSharedIdentifier];
    [(FHTransaction *)v7 financeTransactionSharedIdentifier];
    v325 = v326 = financeTransactionSharedIdentifier2;
    identifier4 = [financeTransactionSharedIdentifier2 isEqualToString:?];
    HIDWORD(v452) = 0;
    v37 = 1;
    if ((identifier4 & 1) == 0)
    {
      v426 = 1;
      v422 = 1;
      v421 = 1;
      v420 = 1;
      v419 = 1;
      LODWORD(v452) = 1;
      LOBYTE(v18) = 0;
      v418 = 0;
      v451 = 0;
      v359 = 0;
      v358 = 0;
      v415 = 0;
      v425 = 0;
      v424 = 0;
      v412 = 0;
      v423 = 0;
      v450 = 0;
      v409 = 0;
      v449 = 0;
      v448 = 0;
      v406 = 0;
      v447 = 0;
      v446 = 0;
      v403 = 0;
      v445 = 0;
      v444 = 0;
      v401 = 0;
      v443 = 0;
      v442 = 0;
      v399 = 0;
      v441 = 0;
      v440 = 0;
      v396 = 0;
      v439 = 0;
      v438 = 0;
      v393 = 0;
      v437 = 0;
      v436 = 0;
      v390 = 0;
      v435 = 0;
      v434 = 0;
      v387 = 0;
      v433 = 0;
      v431 = 0;
      v385 = 0;
      v430 = 0;
      v432 = 0;
      v382 = 0;
      v429 = 0;
      v417 = 0;
      v416 = 0;
      v381 = 0;
      v414 = 0;
      v413 = 0;
      v378 = 0;
      v411 = 0;
      v410 = 0;
      v408 = 0;
      v407 = 0;
      v375 = 0;
      v405 = 0;
      v404 = 0;
      v372 = 0;
      v402 = 0;
      v400 = 0;
      v369 = 0;
      v398 = 0;
      v397 = 0;
      v366 = 0;
      v395 = 0;
      v394 = 0;
      v362 = 0;
      v392 = 0;
      v391 = 0;
      v14 = 0;
      v388 = 0;
      v389 = 0;
      v386 = 0;
      v373 = 0;
      v384 = 0;
      v383 = 0;
      v371 = 0;
      v380 = 0;
      v379 = 0;
      v377 = 0;
      v376 = 0;
      v367 = 0;
      v374 = 0;
      v363 = 0;
      v370 = 0;
      v368 = 0;
      v365 = 0;
      v364 = 0;
      v361 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      goto LABEL_24;
    }
  }

  else
  {
    financeTransactionSharedIdentifier3 = [(FHTransaction *)self financeTransactionSharedIdentifier];
    identifier4 = [(FHTransaction *)v7 financeTransactionSharedIdentifier];
    v37 = 0;
    v331 = 0;
    HIDWORD(v452) = 1;
    v328 = financeTransactionSharedIdentifier3;
    v327 = identifier4;
    if (financeTransactionSharedIdentifier3 != identifier4)
    {
      v422 = 1;
      v421 = 1;
      v420 = 1;
      v419 = 1;
      v418 = 0;
      v451 = 0;
      v359 = 0;
      v358 = 0;
      v415 = 0;
      v425 = 0;
      v424 = 0;
      v412 = 0;
      v423 = 0;
      v450 = 0;
      v409 = 0;
      v449 = 0;
      v448 = 0;
      v406 = 0;
      v447 = 0;
      v446 = 0;
      v403 = 0;
      v445 = 0;
      v444 = 0;
      v401 = 0;
      v443 = 0;
      v442 = 0;
      v399 = 0;
      v441 = 0;
      v440 = 0;
      v396 = 0;
      v439 = 0;
      v438 = 0;
      v393 = 0;
      v437 = 0;
      v436 = 0;
      v390 = 0;
      v435 = 0;
      v434 = 0;
      v387 = 0;
      v433 = 0;
      v431 = 0;
      v385 = 0;
      v430 = 0;
      v432 = 0;
      v382 = 0;
      v429 = 0;
      v417 = 0;
      v416 = 0;
      v381 = 0;
      v414 = 0;
      v413 = 0;
      v378 = 0;
      v411 = 0;
      v410 = 0;
      v408 = 0;
      v407 = 0;
      v375 = 0;
      v405 = 0;
      v404 = 0;
      v372 = 0;
      v402 = 0;
      v400 = 0;
      v369 = 0;
      v398 = 0;
      v397 = 0;
      v366 = 0;
      v395 = 0;
      v394 = 0;
      v362 = 0;
      v392 = 0;
      v391 = 0;
      v14 = 0;
      v388 = 0;
      v389 = 0;
      v386 = 0;
      v373 = 0;
      v384 = 0;
      v383 = 0;
      v371 = 0;
      v380 = 0;
      v379 = 0;
      v377 = 0;
      v376 = 0;
      v367 = 0;
      v374 = 0;
      v363 = 0;
      v370 = 0;
      v368 = 0;
      v365 = 0;
      v364 = 0;
      v361 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v426 = 0;
      LOBYTE(v18) = 0;
      goto LABEL_24;
    }
  }

  v426 = v37;
  financeTransactionSource = [(FHTransaction *)self financeTransactionSource];
  identifier4 = [(FHTransaction *)v7 financeTransactionSource];
  if (financeTransactionSource != identifier4)
  {
    v418 = 0;
    v451 = 0;
    v359 = 0;
    v358 = 0;
    v415 = 0;
    v425 = 0;
    v424 = 0;
    v412 = 0;
    v423 = 0;
    v450 = 0;
    v409 = 0;
    v449 = 0;
    v448 = 0;
    v406 = 0;
    v447 = 0;
    v446 = 0;
    v403 = 0;
    v445 = 0;
    v444 = 0;
    v401 = 0;
    v443 = 0;
    v442 = 0;
    v399 = 0;
    v441 = 0;
    v440 = 0;
    v396 = 0;
    v439 = 0;
    v438 = 0;
    v393 = 0;
    v437 = 0;
    v436 = 0;
    v390 = 0;
    v435 = 0;
    v434 = 0;
    v387 = 0;
    v433 = 0;
    v431 = 0;
    v385 = 0;
    v430 = 0;
    v432 = 0;
    v382 = 0;
    v429 = 0;
    v417 = 0;
    v416 = 0;
    v381 = 0;
    v414 = 0;
    v413 = 0;
    v378 = 0;
    v411 = 0;
    v410 = 0;
    v375 = 0;
    v408 = 0;
    v407 = 0;
    v405 = 0;
    v404 = 0;
    v372 = 0;
    v402 = 0;
    v400 = 0;
    v369 = 0;
    v397 = 0;
    v398 = 0;
    v366 = 0;
    v394 = 0;
    v395 = 0;
    v362 = 0;
    v391 = 0;
    v392 = 0;
    v14 = 0;
    v388 = 0;
    v389 = 0;
    v386 = 0;
    v373 = 0;
    v384 = 0;
    v383 = 0;
    v371 = 0;
    v379 = 0;
    v380 = 0;
    v367 = 0;
    v376 = 0;
    v377 = 0;
    v374 = 0;
    v363 = 0;
    v370 = 0;
    v368 = 0;
    v361 = 0;
    v364 = 0;
    v365 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    LOBYTE(v18) = 0;
    v422 = 1;
    v421 = 1;
    v420 = 1;
    v419 = 1;
    goto LABEL_24;
  }

  paymentHash = [(FHTransaction *)self paymentHash];
  v451 = paymentHash != 0;
  v324 = paymentHash;
  if (paymentHash && ([(FHTransaction *)v7 paymentHash], (v41 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v323 = v41;
    paymentHash2 = [(FHTransaction *)self paymentHash];
    [(FHTransaction *)v7 paymentHash];
    v317 = v318 = paymentHash2;
    identifier4 = [paymentHash2 isEqualToString:?];
    v17 = 0;
    v43 = 1;
    if ((identifier4 & 1) == 0)
    {
      v359 = 1;
      v422 = 1;
      v421 = 1;
      v420 = 1;
      v419 = 1;
      v418 = 1;
      v451 = 1;
      v415 = 0;
      v425 = 0;
      v424 = 0;
      v412 = 0;
      v423 = 0;
      v450 = 0;
      v409 = 0;
      v449 = 0;
      v448 = 0;
      v406 = 0;
      v447 = 0;
      v446 = 0;
      v403 = 0;
      v445 = 0;
      v444 = 0;
      v401 = 0;
      v443 = 0;
      v442 = 0;
      v399 = 0;
      v441 = 0;
      v440 = 0;
      v396 = 0;
      v439 = 0;
      v438 = 0;
      v393 = 0;
      v437 = 0;
      v436 = 0;
      v390 = 0;
      v435 = 0;
      v434 = 0;
      v387 = 0;
      v433 = 0;
      v431 = 0;
      v385 = 0;
      v430 = 0;
      v432 = 0;
      v382 = 0;
      v429 = 0;
      v417 = 0;
      v416 = 0;
      v381 = 0;
      v414 = 0;
      v413 = 0;
      v378 = 0;
      v411 = 0;
      v410 = 0;
      v408 = 0;
      v407 = 0;
      v375 = 0;
      v405 = 0;
      v404 = 0;
      v372 = 0;
      v402 = 0;
      v400 = 0;
      v369 = 0;
      v398 = 0;
      v397 = 0;
      v366 = 0;
      v395 = 0;
      v394 = 0;
      v362 = 0;
      v392 = 0;
      v391 = 0;
      v14 = 0;
      v388 = 0;
      v389 = 0;
      v386 = 0;
      v373 = 0;
      v384 = 0;
      v383 = 0;
      v371 = 0;
      v380 = 0;
      v379 = 0;
      v377 = 0;
      v376 = 0;
      v367 = 0;
      v374 = 0;
      v363 = 0;
      v370 = 0;
      v368 = 0;
      v365 = 0;
      v364 = 0;
      v361 = 0;
      v15 = 0;
      v16 = 0;
      LOBYTE(v18) = 0;
      v358 = 0;
      goto LABEL_24;
    }
  }

  else
  {
    paymentHash3 = [(FHTransaction *)self paymentHash];
    identifier4 = [(FHTransaction *)v7 paymentHash];
    v43 = 0;
    v323 = 0;
    v17 = 1;
    v322 = paymentHash3;
    v321 = identifier4;
    if (paymentHash3 != identifier4)
    {
      v358 = 1;
      v422 = 1;
      v421 = 1;
      v420 = 1;
      v419 = 1;
      v418 = 1;
      v415 = 0;
      v425 = 0;
      v424 = 0;
      v412 = 0;
      v423 = 0;
      v450 = 0;
      v409 = 0;
      v449 = 0;
      v448 = 0;
      v406 = 0;
      v447 = 0;
      v446 = 0;
      v403 = 0;
      v445 = 0;
      v444 = 0;
      v401 = 0;
      v443 = 0;
      v442 = 0;
      v399 = 0;
      v441 = 0;
      v440 = 0;
      v396 = 0;
      v439 = 0;
      v438 = 0;
      v393 = 0;
      v437 = 0;
      v436 = 0;
      v390 = 0;
      v435 = 0;
      v434 = 0;
      v387 = 0;
      v433 = 0;
      v431 = 0;
      v385 = 0;
      v430 = 0;
      v432 = 0;
      v382 = 0;
      v429 = 0;
      v417 = 0;
      v416 = 0;
      v381 = 0;
      v414 = 0;
      v413 = 0;
      v378 = 0;
      v411 = 0;
      v410 = 0;
      v408 = 0;
      v407 = 0;
      v375 = 0;
      v405 = 0;
      v404 = 0;
      v372 = 0;
      v402 = 0;
      v400 = 0;
      v369 = 0;
      v398 = 0;
      v397 = 0;
      v366 = 0;
      v395 = 0;
      v394 = 0;
      v362 = 0;
      v392 = 0;
      v391 = 0;
      v14 = 0;
      v388 = 0;
      v389 = 0;
      v386 = 0;
      v373 = 0;
      v384 = 0;
      v383 = 0;
      v371 = 0;
      v380 = 0;
      v379 = 0;
      v377 = 0;
      v376 = 0;
      v367 = 0;
      v374 = 0;
      v363 = 0;
      v370 = 0;
      v368 = 0;
      v365 = 0;
      v364 = 0;
      v361 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v359 = 0;
      LOBYTE(v18) = 0;
      goto LABEL_24;
    }
  }

  v358 = v17;
  v359 = v43;
  transactionSourceIdentifier = [(FHTransaction *)self transactionSourceIdentifier];
  v46 = transactionSourceIdentifier != 0;
  v320 = transactionSourceIdentifier;
  if (transactionSourceIdentifier && ([(FHTransaction *)v7 transactionSourceIdentifier], (v47 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v319 = v47;
    financeAccountIdentifier2 = [(FHTransaction *)self transactionSourceIdentifier];
    [(FHTransaction *)v7 transactionSourceIdentifier];
    v312 = v313 = financeAccountIdentifier2;
    identifier4 = [financeAccountIdentifier2 isEqualToString:?];
    v17 = 0;
    v48 = 1;
    if ((identifier4 & 1) == 0)
    {
      v422 = 1;
      v421 = 1;
      v420 = 1;
      v419 = 1;
      v418 = 1;
      v415 = 1;
      v425 = 1;
      v412 = 0;
      v423 = 0;
      v450 = 0;
      v409 = 0;
      v449 = 0;
      v448 = 0;
      v406 = 0;
      v447 = 0;
      v446 = 0;
      v403 = 0;
      v445 = 0;
      v444 = 0;
      v401 = 0;
      v443 = 0;
      v442 = 0;
      v399 = 0;
      v441 = 0;
      v440 = 0;
      v396 = 0;
      v439 = 0;
      v438 = 0;
      v393 = 0;
      v437 = 0;
      v436 = 0;
      v390 = 0;
      v435 = 0;
      v434 = 0;
      v387 = 0;
      v433 = 0;
      v431 = 0;
      v385 = 0;
      v430 = 0;
      v432 = 0;
      v382 = 0;
      v429 = 0;
      v417 = 0;
      v416 = 0;
      v381 = 0;
      v414 = 0;
      v413 = 0;
      v378 = 0;
      v411 = 0;
      v410 = 0;
      v408 = 0;
      v407 = 0;
      v375 = 0;
      v405 = 0;
      v404 = 0;
      v372 = 0;
      v402 = 0;
      v400 = 0;
      v369 = 0;
      v398 = 0;
      v397 = 0;
      v366 = 0;
      v395 = 0;
      v394 = 0;
      v362 = 0;
      v392 = 0;
      v391 = 0;
      v14 = 0;
      v388 = 0;
      v389 = 0;
      v386 = 0;
      v373 = 0;
      v384 = 0;
      v383 = 0;
      v371 = 0;
      v380 = 0;
      v379 = 0;
      v377 = 0;
      v376 = 0;
      v367 = 0;
      v374 = 0;
      v363 = 0;
      v370 = 0;
      v368 = 0;
      v365 = 0;
      v364 = 0;
      v361 = 0;
      v15 = 0;
      v16 = 0;
      LOBYTE(v18) = 0;
      v424 = 0x100000000;
      goto LABEL_24;
    }
  }

  else
  {
    financeAccountIdentifier2 = [(FHTransaction *)self transactionSourceIdentifier];
    identifier4 = [(FHTransaction *)v7 transactionSourceIdentifier];
    v48 = 0;
    v319 = 0;
    v17 = 1;
    v316 = financeAccountIdentifier2;
    v315 = identifier4;
    if (financeAccountIdentifier2 != identifier4)
    {
      v424 = 1;
      v425 = v46;
      v422 = 1;
      v421 = 1;
      v420 = 1;
      v419 = 1;
      v418 = 1;
      v415 = 1;
      v412 = 0;
      v423 = 0;
      v450 = 0;
      v409 = 0;
      v449 = 0;
      v448 = 0;
      v406 = 0;
      v447 = 0;
      v446 = 0;
      v403 = 0;
      v445 = 0;
      v444 = 0;
      v401 = 0;
      v443 = 0;
      v442 = 0;
      v399 = 0;
      v441 = 0;
      v440 = 0;
      v396 = 0;
      v439 = 0;
      v438 = 0;
      v393 = 0;
      v437 = 0;
      v436 = 0;
      v390 = 0;
      v435 = 0;
      v434 = 0;
      v387 = 0;
      v433 = 0;
      v431 = 0;
      v385 = 0;
      v430 = 0;
      v432 = 0;
      v382 = 0;
      v429 = 0;
      v417 = 0;
      v416 = 0;
      v381 = 0;
      v414 = 0;
      v413 = 0;
      v378 = 0;
      v411 = 0;
      v410 = 0;
      v408 = 0;
      v407 = 0;
      v375 = 0;
      v405 = 0;
      v404 = 0;
      v372 = 0;
      v402 = 0;
      v400 = 0;
      v369 = 0;
      v398 = 0;
      v397 = 0;
      v366 = 0;
      v395 = 0;
      v394 = 0;
      v362 = 0;
      v392 = 0;
      v391 = 0;
      v14 = 0;
      v388 = 0;
      v389 = 0;
      v386 = 0;
      v373 = 0;
      v384 = 0;
      v383 = 0;
      v371 = 0;
      v380 = 0;
      v379 = 0;
      v377 = 0;
      v376 = 0;
      v367 = 0;
      v374 = 0;
      v363 = 0;
      v370 = 0;
      v368 = 0;
      v365 = 0;
      v364 = 0;
      v361 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      LOBYTE(v18) = 0;
      goto LABEL_24;
    }
  }

  v424 = __PAIR64__(v48, v17);
  amount = [(FHTransaction *)self amount];
  financeAccountIdentifier2 = amount != 0;
  v314 = amount;
  v425 = v46;
  if (amount && ([(FHTransaction *)v7 amount], (v351 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    amount2 = [(FHTransaction *)self amount];
    [(FHTransaction *)v7 amount];
    v306 = v307 = amount2;
    identifier4 = [amount2 isEqual:?];
    v450 = 0;
    v18 = 1;
    if ((identifier4 & 1) == 0)
    {
      v423 = 0x100000001;
      v422 = 1;
      v421 = 1;
      v420 = 1;
      v419 = 1;
      v418 = 1;
      v415 = 1;
      v412 = 1;
      LOBYTE(v18) = 0;
      v409 = 0;
      v449 = 0;
      v448 = 0;
      v406 = 0;
      v447 = 0;
      v446 = 0;
      v403 = 0;
      v445 = 0;
      v444 = 0;
      v401 = 0;
      v443 = 0;
      v442 = 0;
      v399 = 0;
      v441 = 0;
      v440 = 0;
      v396 = 0;
      v439 = 0;
      v438 = 0;
      v393 = 0;
      v437 = 0;
      v436 = 0;
      v390 = 0;
      v435 = 0;
      v434 = 0;
      v387 = 0;
      v433 = 0;
      v431 = 0;
      v385 = 0;
      v430 = 0;
      v432 = 0;
      v382 = 0;
      v429 = 0;
      v417 = 0;
      v416 = 0;
      v381 = 0;
      v414 = 0;
      v413 = 0;
      v378 = 0;
      v411 = 0;
      v410 = 0;
      v408 = 0;
      v407 = 0;
      v375 = 0;
      v405 = 0;
      v404 = 0;
      v372 = 0;
      v402 = 0;
      v400 = 0;
      v369 = 0;
      v398 = 0;
      v397 = 0;
      v366 = 0;
      v395 = 0;
      v394 = 0;
      v362 = 0;
      v392 = 0;
      v391 = 0;
      v14 = 0;
      v388 = 0;
      v389 = 0;
      v386 = 0;
      v373 = 0;
      v384 = 0;
      v383 = 0;
      v371 = 0;
      v380 = 0;
      v379 = 0;
      v377 = 0;
      v376 = 0;
      v367 = 0;
      v374 = 0;
      v363 = 0;
      v370 = 0;
      v368 = 0;
      v365 = 0;
      v364 = 0;
      v361 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      goto LABEL_24;
    }
  }

  else
  {
    amount3 = [(FHTransaction *)self amount];
    identifier4 = [(FHTransaction *)v7 amount];
    v18 = 0;
    v351 = 0;
    v450 = 1;
    v311 = amount3;
    v310 = identifier4;
    if (amount3 != identifier4)
    {
      HIDWORD(v423) = financeAccountIdentifier2;
      v422 = 1;
      v421 = 1;
      v420 = 1;
      v419 = 1;
      v418 = 1;
      v415 = 1;
      v412 = 1;
      v409 = 0;
      v449 = 0;
      v448 = 0;
      v406 = 0;
      v447 = 0;
      v446 = 0;
      v403 = 0;
      v445 = 0;
      v444 = 0;
      v401 = 0;
      v443 = 0;
      v442 = 0;
      v399 = 0;
      v441 = 0;
      v440 = 0;
      v396 = 0;
      v439 = 0;
      v438 = 0;
      v393 = 0;
      v437 = 0;
      v436 = 0;
      v390 = 0;
      v435 = 0;
      v434 = 0;
      v387 = 0;
      v433 = 0;
      v431 = 0;
      v385 = 0;
      v430 = 0;
      v432 = 0;
      v382 = 0;
      v429 = 0;
      v417 = 0;
      v416 = 0;
      v381 = 0;
      v414 = 0;
      v413 = 0;
      v378 = 0;
      v411 = 0;
      v410 = 0;
      v408 = 0;
      v407 = 0;
      v375 = 0;
      v405 = 0;
      v404 = 0;
      v372 = 0;
      v402 = 0;
      v400 = 0;
      v369 = 0;
      v398 = 0;
      v397 = 0;
      v366 = 0;
      v395 = 0;
      v394 = 0;
      v362 = 0;
      v392 = 0;
      v391 = 0;
      v14 = 0;
      v388 = 0;
      v389 = 0;
      v386 = 0;
      v373 = 0;
      v384 = 0;
      v383 = 0;
      v371 = 0;
      v380 = 0;
      v379 = 0;
      v377 = 0;
      v376 = 0;
      v367 = 0;
      v374 = 0;
      v363 = 0;
      v370 = 0;
      v368 = 0;
      v365 = 0;
      v364 = 0;
      v361 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      LODWORD(v423) = 0;
      goto LABEL_24;
    }
  }

  v423 = __PAIR64__(financeAccountIdentifier2, v18);
  currencyCode = [(FHTransaction *)self currencyCode];
  LODWORD(v449) = currencyCode != 0;
  v308 = currencyCode;
  if (currencyCode && ([(FHTransaction *)v7 currencyCode], (v309 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    currencyCode2 = [(FHTransaction *)self currencyCode];
    [(FHTransaction *)v7 currencyCode];
    v300 = v301 = currencyCode2;
    identifier4 = [currencyCode2 isEqualToString:?];
    v448 = 0;
    HIDWORD(v449) = 1;
    if ((identifier4 & 1) == 0)
    {
      v422 = 1;
      v421 = 1;
      v420 = 1;
      v419 = 1;
      v418 = 1;
      v415 = 1;
      v412 = 1;
      v409 = 1;
      LODWORD(v449) = 1;
      LOBYTE(v18) = 0;
LABEL_344:
      v406 = 0;
      v447 = 0;
      v446 = 0;
LABEL_351:
      v403 = 0;
      v445 = 0;
      v444 = 0;
LABEL_352:
      v401 = 0;
      v443 = 0;
      v442 = 0;
LABEL_353:
      v399 = 0;
      v441 = 0;
      v440 = 0;
LABEL_354:
      v396 = 0;
      v439 = 0;
      v438 = 0;
LABEL_355:
      v393 = 0;
      v437 = 0;
      v436 = 0;
LABEL_356:
      v390 = 0;
      v435 = 0;
      v434 = 0;
LABEL_357:
      v387 = 0;
      v433 = 0;
      v431 = 0;
LABEL_358:
      v385 = 0;
      v430 = 0;
      v432 = 0;
LABEL_359:
      v382 = 0;
      v429 = 0;
      v417 = 0;
      v416 = 0;
LABEL_360:
      v381 = 0;
      v414 = 0;
      v413 = 0;
LABEL_361:
      v378 = 0;
      v411 = 0;
      v410 = 0;
LABEL_362:
      HIDWORD(v375) = 0;
      v408 = 0;
      v407 = 0;
LABEL_363:
      LODWORD(v375) = 0;
      v405 = 0;
      v404 = 0;
LABEL_364:
      v372 = 0;
      v402 = 0;
      v400 = 0;
LABEL_365:
      v369 = 0;
      v398 = 0;
      v397 = 0;
LABEL_366:
      v366 = 0;
      v395 = 0;
      v394 = 0;
LABEL_367:
      v362 = 0;
      v392 = 0;
      v391 = 0;
LABEL_368:
      v14 = 0;
      v388 = 0;
      v389 = 0;
      v386 = 0;
LABEL_369:
      LODWORD(v373) = 0;
      v384 = 0;
      v383 = 0;
LABEL_370:
      v371 = 0;
      v380 = 0;
      v379 = 0;
LABEL_371:
      HIDWORD(v367) = 0;
      v377 = 0;
      v376 = 0;
LABEL_372:
      LODWORD(v367) = 0;
      v374 = 0;
      HIDWORD(v373) = 0;
LABEL_373:
      v363 = 0;
      v370 = 0;
      v368 = 0;
LABEL_374:
      HIDWORD(v361) = 0;
      v365 = 0;
      v364 = 0;
LABEL_375:
      LODWORD(v361) = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      goto LABEL_24;
    }
  }

  else
  {
    currencyCode3 = [(FHTransaction *)self currencyCode];
    identifier4 = [(FHTransaction *)v7 currencyCode];
    HIDWORD(v449) = 0;
    v309 = 0;
    v448 = 1;
    v305 = currencyCode3;
    v304 = identifier4;
    if (currencyCode3 != identifier4)
    {
      v422 = 1;
      v421 = 1;
      v420 = 1;
      v419 = 1;
      v418 = 1;
      v415 = 1;
      v412 = 1;
      v409 = 1;
      LOBYTE(v18) = 0;
      goto LABEL_344;
    }
  }

  transactionDate = [(FHTransaction *)self transactionDate];
  LODWORD(v447) = transactionDate != 0;
  v302 = transactionDate;
  if (transactionDate && ([(FHTransaction *)v7 transactionDate], (v303 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    transactionDate2 = [(FHTransaction *)self transactionDate];
    [(FHTransaction *)v7 transactionDate];
    v294 = v295 = transactionDate2;
    identifier4 = [transactionDate2 isEqual:?];
    v446 = 0;
    HIDWORD(v447) = 1;
    if ((identifier4 & 1) == 0)
    {
      v422 = 1;
      v421 = 1;
      v420 = 1;
      v419 = 1;
      v418 = 1;
      v415 = 1;
      v412 = 1;
      v409 = 1;
      v406 = 1;
      LODWORD(v447) = 1;
      LOBYTE(v18) = 0;
      goto LABEL_351;
    }
  }

  else
  {
    transactionDate3 = [(FHTransaction *)self transactionDate];
    identifier4 = [(FHTransaction *)v7 transactionDate];
    HIDWORD(v447) = 0;
    v303 = 0;
    v446 = 1;
    v299 = transactionDate3;
    v298 = identifier4;
    if (transactionDate3 != identifier4)
    {
      v422 = 1;
      v421 = 1;
      v420 = 1;
      v419 = 1;
      v418 = 1;
      v415 = 1;
      v412 = 1;
      v409 = 1;
      v406 = 1;
      LOBYTE(v18) = 0;
      goto LABEL_351;
    }
  }

  transactionStatusChangedDate = [(FHTransaction *)self transactionStatusChangedDate];
  LODWORD(v445) = transactionStatusChangedDate != 0;
  v296 = transactionStatusChangedDate;
  if (transactionStatusChangedDate && ([(FHTransaction *)v7 transactionStatusChangedDate], (v297 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    transactionStatusChangedDate2 = [(FHTransaction *)self transactionStatusChangedDate];
    [(FHTransaction *)v7 transactionStatusChangedDate];
    v288 = v289 = transactionStatusChangedDate2;
    identifier4 = [transactionStatusChangedDate2 isEqual:?];
    v444 = 0;
    HIDWORD(v445) = 1;
    if ((identifier4 & 1) == 0)
    {
      v422 = 1;
      v421 = 1;
      v420 = 1;
      v419 = 1;
      v418 = 1;
      v415 = 1;
      v412 = 1;
      v409 = 1;
      v406 = 1;
      v403 = 1;
      LODWORD(v445) = 1;
      LOBYTE(v18) = 0;
      goto LABEL_352;
    }
  }

  else
  {
    transactionStatusChangedDate3 = [(FHTransaction *)self transactionStatusChangedDate];
    identifier4 = [(FHTransaction *)v7 transactionStatusChangedDate];
    HIDWORD(v445) = 0;
    v297 = 0;
    v444 = 1;
    v293 = transactionStatusChangedDate3;
    v292 = identifier4;
    if (transactionStatusChangedDate3 != identifier4)
    {
      v422 = 1;
      v421 = 1;
      v420 = 1;
      v419 = 1;
      v418 = 1;
      v415 = 1;
      v412 = 1;
      v409 = 1;
      v406 = 1;
      v403 = 1;
      LOBYTE(v18) = 0;
      goto LABEL_352;
    }
  }

  industryCategory = [(FHTransaction *)self industryCategory];
  LODWORD(v443) = industryCategory != 0;
  v290 = industryCategory;
  if (industryCategory && ([(FHTransaction *)v7 industryCategory], (v291 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    industryCategory2 = [(FHTransaction *)self industryCategory];
    [(FHTransaction *)v7 industryCategory];
    v282 = v283 = industryCategory2;
    identifier4 = [industryCategory2 isEqualToString:?];
    v442 = 0;
    HIDWORD(v443) = 1;
    if ((identifier4 & 1) == 0)
    {
      v422 = 1;
      v421 = 1;
      v420 = 1;
      v419 = 1;
      v418 = 1;
      v415 = 1;
      v412 = 1;
      v409 = 1;
      v406 = 1;
      v403 = 1;
      v401 = 1;
      LODWORD(v443) = 1;
      LOBYTE(v18) = 0;
      goto LABEL_353;
    }
  }

  else
  {
    industryCategory3 = [(FHTransaction *)self industryCategory];
    identifier4 = [(FHTransaction *)v7 industryCategory];
    HIDWORD(v443) = 0;
    v291 = 0;
    v442 = 1;
    v287 = industryCategory3;
    v286 = identifier4;
    if (industryCategory3 != identifier4)
    {
      v422 = 1;
      v421 = 1;
      v420 = 1;
      v419 = 1;
      v418 = 1;
      v415 = 1;
      v412 = 1;
      v409 = 1;
      v406 = 1;
      v403 = 1;
      v401 = 1;
      LOBYTE(v18) = 0;
      goto LABEL_353;
    }
  }

  displayName = [(FHTransaction *)self displayName];
  LODWORD(v441) = displayName != 0;
  v284 = displayName;
  if (displayName && ([(FHTransaction *)v7 displayName], (v285 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    displayName2 = [(FHTransaction *)self displayName];
    [(FHTransaction *)v7 displayName];
    v276 = v277 = displayName2;
    identifier4 = [displayName2 isEqual:?];
    v440 = 0;
    HIDWORD(v441) = 1;
    if ((identifier4 & 1) == 0)
    {
      v422 = 1;
      v421 = 1;
      v420 = 1;
      v419 = 1;
      v418 = 1;
      v415 = 1;
      v412 = 1;
      v409 = 1;
      v406 = 1;
      v403 = 1;
      v401 = 1;
      v399 = 1;
      LODWORD(v441) = 1;
      LOBYTE(v18) = 0;
      goto LABEL_354;
    }
  }

  else
  {
    displayName3 = [(FHTransaction *)self displayName];
    identifier4 = [(FHTransaction *)v7 displayName];
    HIDWORD(v441) = 0;
    v285 = 0;
    v440 = 1;
    v281 = displayName3;
    v280 = identifier4;
    if (displayName3 != identifier4)
    {
      v422 = 1;
      v421 = 1;
      v420 = 1;
      v419 = 1;
      v418 = 1;
      v415 = 1;
      v412 = 1;
      v409 = 1;
      v406 = 1;
      v403 = 1;
      v401 = 1;
      v399 = 1;
      LOBYTE(v18) = 0;
      goto LABEL_354;
    }
  }

  street = [(FHTransaction *)self street];
  LODWORD(v439) = street != 0;
  v278 = street;
  if (street && ([(FHTransaction *)v7 street], (v279 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    street2 = [(FHTransaction *)self street];
    [(FHTransaction *)v7 street];
    v270 = v271 = street2;
    identifier4 = [street2 isEqualToString:?];
    v438 = 0;
    HIDWORD(v439) = 1;
    if ((identifier4 & 1) == 0)
    {
      v422 = 1;
      v421 = 1;
      v420 = 1;
      v419 = 1;
      v418 = 1;
      v415 = 1;
      v412 = 1;
      v409 = 1;
      v406 = 1;
      v403 = 1;
      v401 = 1;
      v399 = 1;
      v396 = 1;
      LODWORD(v439) = 1;
      LOBYTE(v18) = 0;
      goto LABEL_355;
    }
  }

  else
  {
    street3 = [(FHTransaction *)self street];
    identifier4 = [(FHTransaction *)v7 street];
    HIDWORD(v439) = 0;
    v279 = 0;
    v438 = 1;
    v275 = street3;
    v274 = identifier4;
    if (street3 != identifier4)
    {
      v422 = 1;
      v421 = 1;
      v420 = 1;
      v419 = 1;
      v418 = 1;
      v415 = 1;
      v412 = 1;
      v409 = 1;
      v406 = 1;
      v403 = 1;
      v401 = 1;
      v399 = 1;
      v396 = 1;
      LOBYTE(v18) = 0;
      goto LABEL_355;
    }
  }

  city = [(FHTransaction *)self city];
  LODWORD(v437) = city != 0;
  v272 = city;
  if (city && ([(FHTransaction *)v7 city], (v273 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    city2 = [(FHTransaction *)self city];
    [(FHTransaction *)v7 city];
    v264 = v265 = city2;
    identifier4 = [city2 isEqualToString:?];
    v436 = 0;
    HIDWORD(v437) = 1;
    if ((identifier4 & 1) == 0)
    {
      v422 = 1;
      v421 = 1;
      v420 = 1;
      v419 = 1;
      v418 = 1;
      v415 = 1;
      v412 = 1;
      v409 = 1;
      v406 = 1;
      v403 = 1;
      v401 = 1;
      v399 = 1;
      v396 = 1;
      v393 = 1;
      LODWORD(v437) = 1;
      LOBYTE(v18) = 0;
      goto LABEL_356;
    }
  }

  else
  {
    city3 = [(FHTransaction *)self city];
    identifier4 = [(FHTransaction *)v7 city];
    HIDWORD(v437) = 0;
    v273 = 0;
    v436 = 1;
    v269 = city3;
    v268 = identifier4;
    if (city3 != identifier4)
    {
      v422 = 1;
      v421 = 1;
      v420 = 1;
      v419 = 1;
      v418 = 1;
      v415 = 1;
      v412 = 1;
      v409 = 1;
      v406 = 1;
      v403 = 1;
      v401 = 1;
      v399 = 1;
      v396 = 1;
      v393 = 1;
      LOBYTE(v18) = 0;
      goto LABEL_356;
    }
  }

  state = [(FHTransaction *)self state];
  LODWORD(v435) = state != 0;
  v266 = state;
  if (state && ([(FHTransaction *)v7 state], (v267 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    state2 = [(FHTransaction *)self state];
    [(FHTransaction *)v7 state];
    v258 = v259 = state2;
    identifier4 = [state2 isEqualToString:?];
    v434 = 0;
    HIDWORD(v435) = 1;
    if ((identifier4 & 1) == 0)
    {
      v422 = 1;
      v421 = 1;
      v420 = 1;
      v419 = 1;
      v418 = 1;
      v415 = 1;
      v412 = 1;
      v409 = 1;
      v406 = 1;
      v403 = 1;
      v401 = 1;
      v399 = 1;
      v396 = 1;
      v393 = 1;
      v390 = 1;
      LODWORD(v435) = 1;
      LOBYTE(v18) = 0;
      goto LABEL_357;
    }
  }

  else
  {
    state3 = [(FHTransaction *)self state];
    identifier4 = [(FHTransaction *)v7 state];
    HIDWORD(v435) = 0;
    v267 = 0;
    v434 = 1;
    v263 = state3;
    v262 = identifier4;
    if (state3 != identifier4)
    {
      v422 = 1;
      v421 = 1;
      v420 = 1;
      v419 = 1;
      v418 = 1;
      v415 = 1;
      v412 = 1;
      v409 = 1;
      v406 = 1;
      v403 = 1;
      v401 = 1;
      v399 = 1;
      v396 = 1;
      v393 = 1;
      v390 = 1;
      LOBYTE(v18) = 0;
      goto LABEL_357;
    }
  }

  v76 = [(FHTransaction *)self zip];
  v433 = v76 != 0;
  v260 = v76;
  if (v76 && ([(FHTransaction *)v7 zip], (v261 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v77 = [(FHTransaction *)self zip];
    [(FHTransaction *)v7 zip];
    v253 = v254 = v77;
    identifier4 = [v77 isEqualToString:?];
    v431 = 0x100000000;
    if ((identifier4 & 1) == 0)
    {
      v422 = 1;
      v421 = 1;
      v420 = 1;
      v419 = 1;
      v418 = 1;
      v415 = 1;
      v412 = 1;
      v409 = 1;
      v406 = 1;
      v403 = 1;
      v401 = 1;
      v399 = 1;
      v396 = 1;
      v393 = 1;
      v390 = 1;
      v387 = 1;
      v433 = 1;
      LOBYTE(v18) = 0;
      goto LABEL_358;
    }
  }

  else
  {
    v78 = [(FHTransaction *)self zip];
    identifier4 = [(FHTransaction *)v7 zip];
    v261 = 0;
    v431 = 1;
    v257 = v78;
    v256 = identifier4;
    if (v78 != identifier4)
    {
      v422 = 1;
      v421 = 1;
      v420 = 1;
      v419 = 1;
      v418 = 1;
      v415 = 1;
      v412 = 1;
      v409 = 1;
      v406 = 1;
      v403 = 1;
      v401 = 1;
      v399 = 1;
      v396 = 1;
      v393 = 1;
      v390 = 1;
      v387 = 1;
      LOBYTE(v18) = 0;
      goto LABEL_358;
    }
  }

  countryCode = [(FHTransaction *)self countryCode];
  HIDWORD(v430) = countryCode != 0;
  v252 = countryCode;
  if (countryCode && ([(FHTransaction *)v7 countryCode], (v255 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    countryCode2 = [(FHTransaction *)self countryCode];
    [(FHTransaction *)v7 countryCode];
    v246 = v247 = countryCode2;
    identifier4 = [countryCode2 isEqualToString:?];
    LODWORD(v430) = 0;
    v432 = 1;
    if ((identifier4 & 1) == 0)
    {
      v422 = 1;
      v421 = 1;
      v420 = 1;
      v419 = 1;
      v418 = 1;
      v415 = 1;
      v412 = 1;
      v409 = 1;
      v406 = 1;
      v403 = 1;
      v401 = 1;
      v399 = 1;
      v396 = 1;
      v393 = 1;
      v390 = 1;
      v387 = 1;
      v385 = 1;
      HIDWORD(v430) = 1;
      LOBYTE(v18) = 0;
      goto LABEL_359;
    }
  }

  else
  {
    countryCode3 = [(FHTransaction *)self countryCode];
    identifier4 = [(FHTransaction *)v7 countryCode];
    v432 = 0;
    v255 = 0;
    LODWORD(v430) = 1;
    v251 = countryCode3;
    v250 = identifier4;
    if (countryCode3 != identifier4)
    {
      v422 = 1;
      v421 = 1;
      v420 = 1;
      v419 = 1;
      v418 = 1;
      v415 = 1;
      v412 = 1;
      v409 = 1;
      v406 = 1;
      v403 = 1;
      v401 = 1;
      v399 = 1;
      v396 = 1;
      v393 = 1;
      v390 = 1;
      v387 = 1;
      v385 = 1;
      LOBYTE(v18) = 0;
      goto LABEL_359;
    }
  }

  altDSID = [(FHTransaction *)self altDSID];
  v429 = altDSID != 0;
  v249 = altDSID;
  if (altDSID && ([(FHTransaction *)v7 altDSID], (v248 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    altDSID2 = [(FHTransaction *)self altDSID];
    [(FHTransaction *)v7 altDSID];
    v242 = v243 = altDSID2;
    identifier4 = [altDSID2 isEqualToString:?];
    v416 = 0;
    v417 = 1;
    if ((identifier4 & 1) == 0)
    {
      v422 = 1;
      v421 = 1;
      v420 = 1;
      v419 = 1;
      v418 = 1;
      v415 = 1;
      v412 = 1;
      v409 = 1;
      v406 = 1;
      v403 = 1;
      v401 = 1;
      v399 = 1;
      v396 = 1;
      v393 = 1;
      v390 = 1;
      v387 = 1;
      v385 = 1;
      v382 = 1;
      v429 = 1;
      LOBYTE(v18) = 0;
      goto LABEL_360;
    }
  }

  else
  {
    altDSID3 = [(FHTransaction *)self altDSID];
    identifier4 = [(FHTransaction *)v7 altDSID];
    v417 = 0;
    v248 = 0;
    v416 = 1;
    v245 = altDSID3;
    v244 = identifier4;
    if (altDSID3 != identifier4)
    {
      v422 = 1;
      v421 = 1;
      v420 = 1;
      v419 = 1;
      v418 = 1;
      v415 = 1;
      v412 = 1;
      v409 = 1;
      v406 = 1;
      v403 = 1;
      v401 = 1;
      v399 = 1;
      v396 = 1;
      v393 = 1;
      v390 = 1;
      v387 = 1;
      v385 = 1;
      v382 = 1;
      LOBYTE(v18) = 0;
      goto LABEL_360;
    }
  }

  receiptIdentifier = [(FHTransaction *)self receiptIdentifier];
  LODWORD(v414) = receiptIdentifier != 0;
  v241 = receiptIdentifier;
  if (receiptIdentifier && ([(FHTransaction *)v7 receiptIdentifier], (v240 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    receiptIdentifier2 = [(FHTransaction *)self receiptIdentifier];
    [(FHTransaction *)v7 receiptIdentifier];
    v235 = v236 = receiptIdentifier2;
    identifier4 = [receiptIdentifier2 isEqualToString:?];
    v413 = 0;
    HIDWORD(v414) = 1;
    if ((identifier4 & 1) == 0)
    {
      v422 = 1;
      v421 = 1;
      v420 = 1;
      v419 = 1;
      v418 = 1;
      v415 = 1;
      v412 = 1;
      v409 = 1;
      v406 = 1;
      v403 = 1;
      v401 = 1;
      v399 = 1;
      v396 = 1;
      v393 = 1;
      v390 = 1;
      v387 = 1;
      v385 = 1;
      v382 = 1;
      v381 = 1;
      LODWORD(v414) = 1;
      LOBYTE(v18) = 0;
      goto LABEL_361;
    }
  }

  else
  {
    receiptIdentifier3 = [(FHTransaction *)self receiptIdentifier];
    identifier4 = [(FHTransaction *)v7 receiptIdentifier];
    HIDWORD(v414) = 0;
    v240 = 0;
    v413 = 1;
    v239 = receiptIdentifier3;
    v238 = identifier4;
    if (receiptIdentifier3 != identifier4)
    {
      v422 = 1;
      v421 = 1;
      v420 = 1;
      v419 = 1;
      v418 = 1;
      v415 = 1;
      v412 = 1;
      v409 = 1;
      v406 = 1;
      v403 = 1;
      v401 = 1;
      v399 = 1;
      v396 = 1;
      v393 = 1;
      v390 = 1;
      v387 = 1;
      v385 = 1;
      v382 = 1;
      v381 = 1;
      LOBYTE(v18) = 0;
      goto LABEL_361;
    }
  }

  associatedReceiptUniqueID = [(FHTransaction *)self associatedReceiptUniqueID];
  LODWORD(v411) = associatedReceiptUniqueID != 0;
  v234 = associatedReceiptUniqueID;
  if (associatedReceiptUniqueID && ([(FHTransaction *)v7 associatedReceiptUniqueID], (v237 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    associatedReceiptUniqueID2 = [(FHTransaction *)self associatedReceiptUniqueID];
    [(FHTransaction *)v7 associatedReceiptUniqueID];
    v232 = v233 = associatedReceiptUniqueID2;
    identifier4 = [associatedReceiptUniqueID2 isEqualToString:?];
    v410 = 0;
    HIDWORD(v411) = 1;
    if ((identifier4 & 1) == 0)
    {
      v422 = 1;
      v421 = 1;
      v420 = 1;
      v419 = 1;
      v418 = 1;
      v415 = 1;
      v412 = 1;
      v409 = 1;
      v406 = 1;
      v403 = 1;
      v401 = 1;
      v399 = 1;
      v396 = 1;
      v393 = 1;
      v390 = 1;
      v387 = 1;
      v385 = 1;
      v382 = 1;
      v381 = 1;
      v378 = 1;
      LODWORD(v411) = 1;
      LOBYTE(v18) = 0;
      goto LABEL_362;
    }
  }

  else
  {
    associatedReceiptUniqueID3 = [(FHTransaction *)self associatedReceiptUniqueID];
    identifier4 = [(FHTransaction *)v7 associatedReceiptUniqueID];
    HIDWORD(v411) = 0;
    v237 = 0;
    v410 = 1;
    v231 = associatedReceiptUniqueID3;
    v230 = identifier4;
    if (associatedReceiptUniqueID3 != identifier4)
    {
      v422 = 1;
      v421 = 1;
      v420 = 1;
      v419 = 1;
      v418 = 1;
      v415 = 1;
      v412 = 1;
      v409 = 1;
      v406 = 1;
      v403 = 1;
      v401 = 1;
      v399 = 1;
      v396 = 1;
      v393 = 1;
      v390 = 1;
      v387 = 1;
      v385 = 1;
      v382 = 1;
      v381 = 1;
      v378 = 1;
      LOBYTE(v18) = 0;
      goto LABEL_362;
    }
  }

  country = [(FHTransaction *)self country];
  LODWORD(v408) = country != 0;
  v229 = country;
  if (country && ([(FHTransaction *)v7 country], (v228 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    country2 = [(FHTransaction *)self country];
    [(FHTransaction *)v7 country];
    v226 = v227 = country2;
    identifier4 = [country2 isEqualToString:?];
    v407 = 0;
    HIDWORD(v408) = 1;
    if ((identifier4 & 1) == 0)
    {
      v422 = 1;
      v421 = 1;
      v420 = 1;
      v419 = 1;
      v418 = 1;
      v415 = 1;
      v412 = 1;
      v409 = 1;
      v406 = 1;
      v403 = 1;
      v401 = 1;
      v399 = 1;
      v396 = 1;
      v393 = 1;
      v390 = 1;
      v387 = 1;
      v385 = 1;
      v382 = 1;
      v381 = 1;
      v378 = 1;
      HIDWORD(v375) = 1;
      LODWORD(v408) = 1;
      LOBYTE(v18) = 0;
      goto LABEL_363;
    }
  }

  else
  {
    country3 = [(FHTransaction *)self country];
    identifier4 = [(FHTransaction *)v7 country];
    HIDWORD(v408) = 0;
    v228 = 0;
    v407 = 1;
    v225 = country3;
    v224 = identifier4;
    if (country3 != identifier4)
    {
      v422 = 1;
      v421 = 1;
      v420 = 1;
      v419 = 1;
      v418 = 1;
      v415 = 1;
      v412 = 1;
      v409 = 1;
      v406 = 1;
      v403 = 1;
      v401 = 1;
      v399 = 1;
      v396 = 1;
      v393 = 1;
      v390 = 1;
      v387 = 1;
      v385 = 1;
      v382 = 1;
      v381 = 1;
      v378 = 1;
      HIDWORD(v375) = 1;
      LOBYTE(v18) = 0;
      goto LABEL_363;
    }
  }

  merchantUniqueIdentifier = [(FHTransaction *)self merchantUniqueIdentifier];
  LODWORD(v405) = merchantUniqueIdentifier != 0;
  v223 = merchantUniqueIdentifier;
  if (merchantUniqueIdentifier && ([(FHTransaction *)v7 merchantUniqueIdentifier], (v222 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    merchantUniqueIdentifier2 = [(FHTransaction *)self merchantUniqueIdentifier];
    [(FHTransaction *)v7 merchantUniqueIdentifier];
    v220 = v221 = merchantUniqueIdentifier2;
    identifier4 = [merchantUniqueIdentifier2 isEqualToString:?];
    v404 = 0;
    HIDWORD(v405) = 1;
    if ((identifier4 & 1) == 0)
    {
      v422 = 1;
      v421 = 1;
      v420 = 1;
      v419 = 1;
      v418 = 1;
      v415 = 1;
      v412 = 1;
      v409 = 1;
      v406 = 1;
      v403 = 1;
      v401 = 1;
      v399 = 1;
      v396 = 1;
      v393 = 1;
      v390 = 1;
      v387 = 1;
      v385 = 1;
      v382 = 1;
      v381 = 1;
      v378 = 1;
      v375 = 0x100000001;
      LODWORD(v405) = 1;
      LOBYTE(v18) = 0;
      goto LABEL_364;
    }
  }

  else
  {
    merchantUniqueIdentifier3 = [(FHTransaction *)self merchantUniqueIdentifier];
    identifier4 = [(FHTransaction *)v7 merchantUniqueIdentifier];
    HIDWORD(v405) = 0;
    v222 = 0;
    v404 = 1;
    v219 = merchantUniqueIdentifier3;
    v218 = identifier4;
    if (merchantUniqueIdentifier3 != identifier4)
    {
      v422 = 1;
      v421 = 1;
      v420 = 1;
      v419 = 1;
      v418 = 1;
      v415 = 1;
      v412 = 1;
      v409 = 1;
      v406 = 1;
      v403 = 1;
      v401 = 1;
      v399 = 1;
      v396 = 1;
      v393 = 1;
      v390 = 1;
      v387 = 1;
      v385 = 1;
      v382 = 1;
      v381 = 1;
      v378 = 1;
      v375 = 0x100000001;
      LOBYTE(v18) = 0;
      goto LABEL_364;
    }
  }

  name = [(FHTransaction *)self name];
  LODWORD(v402) = name != 0;
  v217 = name;
  if (name && ([(FHTransaction *)v7 name], (v216 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    name2 = [(FHTransaction *)self name];
    [(FHTransaction *)v7 name];
    v214 = v215 = name2;
    identifier4 = [name2 isEqualToString:?];
    v400 = 0;
    HIDWORD(v402) = 1;
    if ((identifier4 & 1) == 0)
    {
      v422 = 1;
      v421 = 1;
      v420 = 1;
      v419 = 1;
      v418 = 1;
      v415 = 1;
      v412 = 1;
      v409 = 1;
      v406 = 1;
      v403 = 1;
      v401 = 1;
      v399 = 1;
      v396 = 1;
      v393 = 1;
      v390 = 1;
      v387 = 1;
      v385 = 1;
      v382 = 1;
      v381 = 1;
      v378 = 1;
      v375 = 0x100000001;
      v372 = 1;
      LODWORD(v402) = 1;
      LOBYTE(v18) = 0;
      goto LABEL_365;
    }
  }

  else
  {
    name3 = [(FHTransaction *)self name];
    identifier4 = [(FHTransaction *)v7 name];
    HIDWORD(v402) = 0;
    v216 = 0;
    v400 = 1;
    v212 = identifier4;
    v213 = name3;
    if (name3 != identifier4)
    {
      v422 = 1;
      v421 = 1;
      v420 = 1;
      v419 = 1;
      v418 = 1;
      v415 = 1;
      v412 = 1;
      v409 = 1;
      v406 = 1;
      v403 = 1;
      v401 = 1;
      v399 = 1;
      v396 = 1;
      v393 = 1;
      v390 = 1;
      v387 = 1;
      v385 = 1;
      v382 = 1;
      v381 = 1;
      v378 = 1;
      v375 = 0x100000001;
      v372 = 1;
      LOBYTE(v18) = 0;
      goto LABEL_365;
    }
  }

  rawName = [(FHTransaction *)self rawName];
  HIDWORD(v397) = rawName != 0;
  v211 = rawName;
  if (rawName && ([(FHTransaction *)v7 rawName], (v210 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    rawName2 = [(FHTransaction *)self rawName];
    rawName3 = [(FHTransaction *)v7 rawName];
    v209 = rawName2;
    identifier4 = [rawName2 isEqualToString:?];
    LODWORD(v397) = 0;
    v398 = 1;
    if ((identifier4 & 1) == 0)
    {
      v422 = 1;
      v421 = 1;
      v420 = 1;
      v419 = 1;
      v418 = 1;
      v415 = 1;
      v412 = 1;
      v409 = 1;
      v406 = 1;
      v403 = 1;
      v401 = 1;
      v399 = 1;
      v396 = 1;
      v393 = 1;
      v390 = 1;
      v387 = 1;
      v385 = 1;
      v382 = 1;
      v381 = 1;
      v378 = 1;
      v375 = 0x100000001;
      v372 = 1;
      v369 = 1;
      HIDWORD(v397) = 1;
      LOBYTE(v18) = 0;
      goto LABEL_366;
    }
  }

  else
  {
    rawName4 = [(FHTransaction *)self rawName];
    identifier4 = [(FHTransaction *)v7 rawName];
    v398 = 0;
    v210 = 0;
    LODWORD(v397) = 1;
    v206 = identifier4;
    v207 = rawName4;
    if (rawName4 != identifier4)
    {
      v422 = 1;
      v421 = 1;
      v420 = 1;
      v419 = 1;
      v418 = 1;
      v415 = 1;
      v412 = 1;
      v409 = 1;
      v406 = 1;
      v403 = 1;
      v401 = 1;
      v399 = 1;
      v396 = 1;
      v393 = 1;
      v390 = 1;
      v387 = 1;
      v385 = 1;
      v382 = 1;
      v381 = 1;
      v378 = 1;
      v375 = 0x100000001;
      v372 = 1;
      v369 = 1;
      LOBYTE(v18) = 0;
      goto LABEL_366;
    }
  }

  timeZone = [(FHTransaction *)self timeZone];
  HIDWORD(v394) = timeZone != 0;
  v205 = timeZone;
  if (timeZone && ([(FHTransaction *)v7 timeZone], (v204 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    timeZone2 = [(FHTransaction *)self timeZone];
    timeZone3 = [(FHTransaction *)v7 timeZone];
    v203 = timeZone2;
    identifier4 = [timeZone2 isEqual:?];
    LODWORD(v394) = 0;
    v395 = 1;
    if ((identifier4 & 1) == 0)
    {
      v422 = 1;
      v421 = 1;
      v420 = 1;
      v419 = 1;
      v418 = 1;
      v415 = 1;
      v412 = 1;
      v409 = 1;
      v406 = 1;
      v403 = 1;
      v401 = 1;
      v399 = 1;
      v396 = 1;
      v393 = 1;
      v390 = 1;
      v387 = 1;
      v385 = 1;
      v382 = 1;
      v381 = 1;
      v378 = 1;
      v375 = 0x100000001;
      v372 = 1;
      v369 = 1;
      v366 = 1;
      HIDWORD(v394) = 1;
      LOBYTE(v18) = 0;
      goto LABEL_367;
    }
  }

  else
  {
    timeZone4 = [(FHTransaction *)self timeZone];
    identifier4 = [(FHTransaction *)v7 timeZone];
    v395 = 0;
    v204 = 0;
    LODWORD(v394) = 1;
    v200 = identifier4;
    v201 = timeZone4;
    if (timeZone4 != identifier4)
    {
      v422 = 1;
      v421 = 1;
      v420 = 1;
      v419 = 1;
      v418 = 1;
      v415 = 1;
      v412 = 1;
      v409 = 1;
      v406 = 1;
      v403 = 1;
      v401 = 1;
      v399 = 1;
      v396 = 1;
      v393 = 1;
      v390 = 1;
      v387 = 1;
      v385 = 1;
      v382 = 1;
      v381 = 1;
      v378 = 1;
      v375 = 0x100000001;
      v372 = 1;
      v369 = 1;
      v366 = 1;
      LOBYTE(v18) = 0;
      goto LABEL_367;
    }
  }

  merchantDetailedCategory = [(FHTransaction *)self merchantDetailedCategory];
  HIDWORD(v391) = merchantDetailedCategory != 0;
  v199 = merchantDetailedCategory;
  if (merchantDetailedCategory && ([(FHTransaction *)v7 merchantDetailedCategory], (v198 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    merchantDetailedCategory2 = [(FHTransaction *)self merchantDetailedCategory];
    merchantDetailedCategory3 = [(FHTransaction *)v7 merchantDetailedCategory];
    v197 = merchantDetailedCategory2;
    identifier4 = [merchantDetailedCategory2 isEqualToString:?];
    LODWORD(v391) = 0;
    v392 = 1;
    if ((identifier4 & 1) == 0)
    {
      v422 = 1;
      v421 = 1;
      v420 = 1;
      v419 = 1;
      v418 = 1;
      v415 = 1;
      v412 = 1;
      v409 = 1;
      v406 = 1;
      v403 = 1;
      v401 = 1;
      v399 = 1;
      v396 = 1;
      v393 = 1;
      v390 = 1;
      v387 = 1;
      v385 = 1;
      v382 = 1;
      v381 = 1;
      v378 = 1;
      v375 = 0x100000001;
      v372 = 1;
      v369 = 1;
      v366 = 1;
      v362 = 1;
      HIDWORD(v391) = 1;
      LOBYTE(v18) = 0;
      goto LABEL_368;
    }
  }

  else
  {
    merchantDetailedCategory4 = [(FHTransaction *)self merchantDetailedCategory];
    identifier4 = [(FHTransaction *)v7 merchantDetailedCategory];
    v392 = 0;
    v198 = 0;
    LODWORD(v391) = 1;
    v194 = identifier4;
    v195 = merchantDetailedCategory4;
    if (merchantDetailedCategory4 != identifier4)
    {
      v422 = 1;
      v421 = 1;
      v420 = 1;
      v419 = 1;
      v418 = 1;
      v415 = 1;
      v412 = 1;
      v409 = 1;
      v406 = 1;
      v403 = 1;
      v401 = 1;
      v399 = 1;
      v396 = 1;
      v393 = 1;
      v390 = 1;
      v387 = 1;
      v385 = 1;
      v382 = 1;
      v381 = 1;
      v378 = 1;
      v375 = 0x100000001;
      v372 = 1;
      v369 = 1;
      v366 = 1;
      v362 = 1;
      LOBYTE(v18) = 0;
      goto LABEL_368;
    }
  }

  location = [(FHTransaction *)self location];
  v388 = location != 0;
  v193 = location;
  if (location && ([(FHTransaction *)v7 location], (v192 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    location2 = [(FHTransaction *)self location];
    location3 = [(FHTransaction *)v7 location];
    v191 = location2;
    identifier4 = [location2 isEqual:?];
    v386 = 0;
    v389 = 1;
    if ((identifier4 & 1) == 0)
    {
      v422 = 1;
      v421 = 1;
      v420 = 1;
      v419 = 1;
      v418 = 1;
      v415 = 1;
      v412 = 1;
      v409 = 1;
      v406 = 1;
      v403 = 1;
      v401 = 1;
      v399 = 1;
      v396 = 1;
      v393 = 1;
      v390 = 1;
      v387 = 1;
      v385 = 1;
      v382 = 1;
      v381 = 1;
      v378 = 1;
      v375 = 0x100000001;
      v372 = 1;
      v369 = 1;
      v366 = 1;
      v362 = 1;
      v14 = 1;
      v388 = 1;
      LOBYTE(v18) = 0;
      goto LABEL_369;
    }
  }

  else
  {
    location4 = [(FHTransaction *)self location];
    identifier4 = [(FHTransaction *)v7 location];
    v389 = 0;
    v192 = 0;
    v386 = 1;
    v188 = identifier4;
    v189 = location4;
    if (location4 != identifier4)
    {
      v422 = 1;
      v421 = 1;
      v420 = 1;
      v419 = 1;
      v418 = 1;
      v415 = 1;
      v412 = 1;
      v409 = 1;
      v406 = 1;
      v403 = 1;
      v401 = 1;
      v399 = 1;
      v396 = 1;
      v393 = 1;
      v390 = 1;
      v387 = 1;
      v385 = 1;
      v382 = 1;
      v381 = 1;
      v378 = 1;
      v375 = 0x100000001;
      v372 = 1;
      v369 = 1;
      v366 = 1;
      v362 = 1;
      v14 = 1;
      LOBYTE(v18) = 0;
      goto LABEL_369;
    }
  }

  industryCode = [(FHTransaction *)self industryCode];
  identifier4 = [(FHTransaction *)v7 industryCode];
  if (industryCode != identifier4)
  {
    goto LABEL_503;
  }

  category = [(FHTransaction *)self category];
  identifier4 = [(FHTransaction *)v7 category];
  if (category != identifier4)
  {
    goto LABEL_503;
  }

  transactionStatus = [(FHTransaction *)self transactionStatus];
  identifier4 = [(FHTransaction *)v7 transactionStatus];
  if (transactionStatus != identifier4)
  {
    goto LABEL_503;
  }

  transactionSource = [(FHTransaction *)self transactionSource];
  identifier4 = [(FHTransaction *)v7 transactionSource];
  if (transactionSource != identifier4)
  {
    goto LABEL_503;
  }

  cardType = [(FHTransaction *)self cardType];
  identifier4 = [(FHTransaction *)v7 cardType];
  if (cardType != identifier4)
  {
    goto LABEL_503;
  }

  transactionType = [(FHTransaction *)self transactionType];
  identifier4 = [(FHTransaction *)v7 transactionType];
  if (transactionType != identifier4)
  {
    goto LABEL_503;
  }

  accountType = [(FHTransaction *)self accountType];
  identifier4 = [(FHTransaction *)v7 accountType];
  if (accountType != identifier4)
  {
    goto LABEL_503;
  }

  transactionInternalState = [(FHTransaction *)self transactionInternalState];
  identifier4 = [(FHTransaction *)v7 transactionInternalState];
  if (transactionInternalState != identifier4)
  {
    goto LABEL_503;
  }

  hasLocation = [(FHTransaction *)self hasLocation];
  identifier4 = [(FHTransaction *)v7 hasLocation];
  if (hasLocation != identifier4)
  {
    goto LABEL_503;
  }

  mapsMerchantID = [(FHTransaction *)self mapsMerchantID];
  identifier4 = [(FHTransaction *)v7 mapsMerchantID];
  if (mapsMerchantID != identifier4)
  {
    goto LABEL_503;
  }

  mapsMerchantResultProviderID = [(FHTransaction *)self mapsMerchantResultProviderID];
  identifier4 = [(FHTransaction *)v7 mapsMerchantResultProviderID];
  if (mapsMerchantResultProviderID != identifier4)
  {
    goto LABEL_503;
  }

  mapsMerchantBrandID = [(FHTransaction *)self mapsMerchantBrandID];
  identifier4 = [(FHTransaction *)v7 mapsMerchantBrandID];
  if (mapsMerchantBrandID != identifier4 || (v124 = [(FHTransaction *)self mapsMerchantBrandResultProviderID], identifier4 = [(FHTransaction *)v7 mapsMerchantBrandResultProviderID], v124 != identifier4) || (v125 = [(FHTransaction *)self disputeType], identifier4 = [(FHTransaction *)v7 disputeType], v125 != identifier4) || (v126 = [(FHTransaction *)self disputeStatus], identifier4 = [(FHTransaction *)v7 disputeStatus], v126 != identifier4))
  {
LABEL_503:
    v373 = 0;
    v384 = 0;
    v383 = 0;
    v371 = 0;
    v379 = 0;
    v380 = 0;
    v367 = 0;
    v376 = 0;
    v377 = 0;
    v374 = 0;
    v363 = 0;
    v370 = 0;
    v368 = 0;
    v361 = 0;
    v364 = 0;
    v365 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    LOBYTE(v18) = 0;
    v422 = 1;
    v421 = 1;
    v420 = 1;
    v419 = 1;
    v418 = 1;
    v415 = 1;
    v412 = 1;
    v409 = 1;
    v406 = 1;
    v403 = 1;
    v401 = 1;
    v399 = 1;
    v396 = 1;
    v393 = 1;
    v390 = 1;
    v387 = 1;
    v385 = 1;
    v382 = 1;
    v381 = 1;
    v378 = 1;
    v375 = 0x100000001;
    v372 = 1;
    v369 = 1;
    v366 = 1;
    v362 = 1;
    v14 = 1;
    goto LABEL_24;
  }

  peerPaymentCounterpartHandle = [(FHTransaction *)self peerPaymentCounterpartHandle];
  LODWORD(v384) = peerPaymentCounterpartHandle != 0;
  v186 = peerPaymentCounterpartHandle;
  if (peerPaymentCounterpartHandle && ([(FHTransaction *)v7 peerPaymentCounterpartHandle], (v187 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    peerPaymentCounterpartHandle2 = [(FHTransaction *)self peerPaymentCounterpartHandle];
    peerPaymentCounterpartHandle3 = [(FHTransaction *)v7 peerPaymentCounterpartHandle];
    v185 = peerPaymentCounterpartHandle2;
    identifier4 = [peerPaymentCounterpartHandle2 isEqualToString:?];
    v383 = 0;
    HIDWORD(v384) = 1;
    if ((identifier4 & 1) == 0)
    {
      v422 = 1;
      v421 = 1;
      v420 = 1;
      v419 = 1;
      v418 = 1;
      v415 = 1;
      v412 = 1;
      v409 = 1;
      v406 = 1;
      v403 = 1;
      v401 = 1;
      v399 = 1;
      v396 = 1;
      v393 = 1;
      v390 = 1;
      v387 = 1;
      v385 = 1;
      v382 = 1;
      v381 = 1;
      v378 = 1;
      v375 = 0x100000001;
      v372 = 1;
      v369 = 1;
      v366 = 1;
      v362 = 1;
      v14 = 1;
      LODWORD(v373) = 1;
      LODWORD(v384) = 1;
      LOBYTE(v18) = 0;
      goto LABEL_370;
    }
  }

  else
  {
    peerPaymentCounterpartHandle4 = [(FHTransaction *)self peerPaymentCounterpartHandle];
    identifier4 = [(FHTransaction *)v7 peerPaymentCounterpartHandle];
    HIDWORD(v384) = 0;
    v187 = 0;
    v383 = 1;
    v182 = identifier4;
    v183 = peerPaymentCounterpartHandle4;
    if (peerPaymentCounterpartHandle4 != identifier4)
    {
      v422 = 1;
      v421 = 1;
      v420 = 1;
      v419 = 1;
      v418 = 1;
      v415 = 1;
      v412 = 1;
      v409 = 1;
      v406 = 1;
      v403 = 1;
      v401 = 1;
      v399 = 1;
      v396 = 1;
      v393 = 1;
      v390 = 1;
      v387 = 1;
      v385 = 1;
      v382 = 1;
      v381 = 1;
      v378 = 1;
      v375 = 0x100000001;
      v372 = 1;
      v369 = 1;
      v366 = 1;
      v362 = 1;
      v14 = 1;
      LODWORD(v373) = 1;
      LOBYTE(v18) = 0;
      goto LABEL_370;
    }
  }

  peerPaymentType = [(FHTransaction *)self peerPaymentType];
  identifier4 = [(FHTransaction *)v7 peerPaymentType];
  if (peerPaymentType != identifier4)
  {
    v371 = 0;
    v379 = 0;
    v380 = 0;
    v367 = 0;
    v376 = 0;
    v377 = 0;
    v374 = 0;
    v363 = 0;
    v370 = 0;
    v368 = 0;
    v361 = 0;
    v364 = 0;
    v365 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    LOBYTE(v18) = 0;
    v422 = 1;
    v421 = 1;
    v420 = 1;
    v419 = 1;
    v418 = 1;
    v415 = 1;
    v412 = 1;
    v409 = 1;
    v406 = 1;
    v403 = 1;
    v401 = 1;
    v399 = 1;
    v396 = 1;
    v393 = 1;
    v390 = 1;
    v387 = 1;
    v385 = 1;
    v382 = 1;
    v381 = 1;
    v378 = 1;
    v375 = 0x100000001;
    v372 = 1;
    v369 = 1;
    v366 = 1;
    v362 = 1;
    v14 = 1;
    v373 = 1;
    goto LABEL_24;
  }

  transactionDescription = [(FHTransaction *)self transactionDescription];
  HIDWORD(v379) = transactionDescription != 0;
  v180 = transactionDescription;
  if (transactionDescription && ([(FHTransaction *)v7 transactionDescription], (v181 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    transactionDescription2 = [(FHTransaction *)self transactionDescription];
    transactionDescription3 = [(FHTransaction *)v7 transactionDescription];
    v179 = transactionDescription2;
    identifier4 = [transactionDescription2 isEqualToString:?];
    LODWORD(v379) = 0;
    v380 = 1;
    if ((identifier4 & 1) == 0)
    {
      v422 = 1;
      v421 = 1;
      v420 = 1;
      v419 = 1;
      v418 = 1;
      v415 = 1;
      v412 = 1;
      v409 = 1;
      v406 = 1;
      v403 = 1;
      v401 = 1;
      v399 = 1;
      v396 = 1;
      v393 = 1;
      v390 = 1;
      v387 = 1;
      v385 = 1;
      v382 = 1;
      v381 = 1;
      v378 = 1;
      v375 = 0x100000001;
      v372 = 1;
      v369 = 1;
      v366 = 1;
      v362 = 1;
      v14 = 1;
      LODWORD(v373) = 1;
      v371 = 1;
      HIDWORD(v379) = 1;
      LOBYTE(v18) = 0;
      goto LABEL_371;
    }
  }

  else
  {
    transactionDescription4 = [(FHTransaction *)self transactionDescription];
    identifier4 = [(FHTransaction *)v7 transactionDescription];
    v380 = 0;
    v181 = 0;
    LODWORD(v379) = 1;
    v176 = identifier4;
    v177 = transactionDescription4;
    if (transactionDescription4 != identifier4)
    {
      v422 = 1;
      v421 = 1;
      v420 = 1;
      v419 = 1;
      v418 = 1;
      v415 = 1;
      v412 = 1;
      v409 = 1;
      v406 = 1;
      v403 = 1;
      v401 = 1;
      v399 = 1;
      v396 = 1;
      v393 = 1;
      v390 = 1;
      v387 = 1;
      v385 = 1;
      v382 = 1;
      v381 = 1;
      v378 = 1;
      v375 = 0x100000001;
      v372 = 1;
      v369 = 1;
      v366 = 1;
      v362 = 1;
      v14 = 1;
      LODWORD(v373) = 1;
      v371 = 1;
      LOBYTE(v18) = 0;
      goto LABEL_371;
    }
  }

  processedDescription = [(FHTransaction *)self processedDescription];
  HIDWORD(v376) = processedDescription != 0;
  v174 = processedDescription;
  if (processedDescription && ([(FHTransaction *)v7 processedDescription], (v175 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    processedDescription2 = [(FHTransaction *)self processedDescription];
    processedDescription3 = [(FHTransaction *)v7 processedDescription];
    v173 = processedDescription2;
    identifier4 = [processedDescription2 isEqualToString:?];
    LODWORD(v376) = 0;
    v377 = 1;
    if ((identifier4 & 1) == 0)
    {
      v422 = 1;
      v421 = 1;
      v420 = 1;
      v419 = 1;
      v418 = 1;
      v415 = 1;
      v412 = 1;
      v409 = 1;
      v406 = 1;
      v403 = 1;
      v401 = 1;
      v399 = 1;
      v396 = 1;
      v393 = 1;
      v390 = 1;
      v387 = 1;
      v385 = 1;
      v382 = 1;
      v381 = 1;
      v378 = 1;
      v375 = 0x100000001;
      v372 = 1;
      v369 = 1;
      v366 = 1;
      v362 = 1;
      v14 = 1;
      LODWORD(v373) = 1;
      v371 = 1;
      HIDWORD(v367) = 1;
      HIDWORD(v376) = 1;
      LOBYTE(v18) = 0;
      goto LABEL_372;
    }
  }

  else
  {
    processedDescription4 = [(FHTransaction *)self processedDescription];
    identifier4 = [(FHTransaction *)v7 processedDescription];
    v377 = 0;
    v175 = 0;
    LODWORD(v376) = 1;
    v170 = identifier4;
    v171 = processedDescription4;
    if (processedDescription4 != identifier4)
    {
      v422 = 1;
      v421 = 1;
      v420 = 1;
      v419 = 1;
      v418 = 1;
      v415 = 1;
      v412 = 1;
      v409 = 1;
      v406 = 1;
      v403 = 1;
      v401 = 1;
      v399 = 1;
      v396 = 1;
      v393 = 1;
      v390 = 1;
      v387 = 1;
      v385 = 1;
      v382 = 1;
      v381 = 1;
      v378 = 1;
      v375 = 0x100000001;
      v372 = 1;
      v369 = 1;
      v366 = 1;
      v362 = 1;
      v14 = 1;
      LODWORD(v373) = 1;
      v371 = 1;
      HIDWORD(v367) = 1;
      LOBYTE(v18) = 0;
      goto LABEL_372;
    }
  }

  recurring = [(FHTransaction *)self recurring];
  identifier4 = [(FHTransaction *)v7 recurring];
  if (recurring != identifier4)
  {
    v367 = 0x100000000;
    v374 = 0;
    v363 = 0;
    v370 = 0;
    v368 = 0;
    v361 = 0;
    v364 = 0;
    v365 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    LOBYTE(v18) = 0;
    v422 = 1;
    v421 = 1;
    v420 = 1;
    v419 = 1;
    v418 = 1;
    v415 = 1;
    v412 = 1;
    v409 = 1;
    v406 = 1;
    v403 = 1;
    v401 = 1;
    v399 = 1;
    v396 = 1;
    v393 = 1;
    v390 = 1;
    v387 = 1;
    v385 = 1;
    v382 = 1;
    v381 = 1;
    v378 = 1;
    v375 = 0x100000001;
    v372 = 1;
    v369 = 1;
    v366 = 1;
    v362 = 1;
    v14 = 1;
    v373 = 1;
    v371 = 1;
    goto LABEL_24;
  }

  disputeOpenDate = [(FHTransaction *)self disputeOpenDate];
  LODWORD(v374) = disputeOpenDate != 0;
  v168 = disputeOpenDate;
  if (disputeOpenDate && ([(FHTransaction *)v7 disputeOpenDate], (v169 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    disputeOpenDate2 = [(FHTransaction *)self disputeOpenDate];
    disputeOpenDate3 = [(FHTransaction *)v7 disputeOpenDate];
    v167 = disputeOpenDate2;
    identifier4 = [disputeOpenDate2 isEqual:?];
    HIDWORD(v373) = 0;
    HIDWORD(v374) = 1;
    if ((identifier4 & 1) == 0)
    {
      v422 = 1;
      v421 = 1;
      v420 = 1;
      v419 = 1;
      v418 = 1;
      v415 = 1;
      v412 = 1;
      v409 = 1;
      v406 = 1;
      v403 = 1;
      v401 = 1;
      v399 = 1;
      v396 = 1;
      v393 = 1;
      v390 = 1;
      v387 = 1;
      v385 = 1;
      v382 = 1;
      v381 = 1;
      v378 = 1;
      v375 = 0x100000001;
      v372 = 1;
      v369 = 1;
      v366 = 1;
      v362 = 1;
      v14 = 1;
      LODWORD(v373) = 1;
      v371 = 1;
      v367 = 0x100000001;
      LODWORD(v374) = 1;
      LOBYTE(v18) = 0;
      goto LABEL_373;
    }
  }

  else
  {
    disputeOpenDate4 = [(FHTransaction *)self disputeOpenDate];
    identifier4 = [(FHTransaction *)v7 disputeOpenDate];
    HIDWORD(v374) = 0;
    v169 = 0;
    HIDWORD(v373) = 1;
    v164 = identifier4;
    v165 = disputeOpenDate4;
    if (disputeOpenDate4 != identifier4)
    {
      v422 = 1;
      v421 = 1;
      v420 = 1;
      v419 = 1;
      v418 = 1;
      v415 = 1;
      v412 = 1;
      v409 = 1;
      v406 = 1;
      v403 = 1;
      v401 = 1;
      v399 = 1;
      v396 = 1;
      v393 = 1;
      v390 = 1;
      v387 = 1;
      v385 = 1;
      v382 = 1;
      v381 = 1;
      v378 = 1;
      v375 = 0x100000001;
      v372 = 1;
      v369 = 1;
      v366 = 1;
      v362 = 1;
      v14 = 1;
      LODWORD(v373) = 1;
      v371 = 1;
      v367 = 0x100000001;
      LOBYTE(v18) = 0;
      goto LABEL_373;
    }
  }

  disputeLastUpdatedDate = [(FHTransaction *)self disputeLastUpdatedDate];
  LODWORD(v370) = disputeLastUpdatedDate != 0;
  v162 = disputeLastUpdatedDate;
  if (disputeLastUpdatedDate && ([(FHTransaction *)v7 disputeLastUpdatedDate], (v163 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    disputeLastUpdatedDate2 = [(FHTransaction *)self disputeLastUpdatedDate];
    disputeLastUpdatedDate3 = [(FHTransaction *)v7 disputeLastUpdatedDate];
    v161 = disputeLastUpdatedDate2;
    identifier4 = [disputeLastUpdatedDate2 isEqual:?];
    v368 = 0;
    HIDWORD(v370) = 1;
    if ((identifier4 & 1) == 0)
    {
      v422 = 1;
      v421 = 1;
      v420 = 1;
      v419 = 1;
      v418 = 1;
      v415 = 1;
      v412 = 1;
      v409 = 1;
      v406 = 1;
      v403 = 1;
      v401 = 1;
      v399 = 1;
      v396 = 1;
      v393 = 1;
      v390 = 1;
      v387 = 1;
      v385 = 1;
      v382 = 1;
      v381 = 1;
      v378 = 1;
      v375 = 0x100000001;
      v372 = 1;
      v369 = 1;
      v366 = 1;
      v362 = 1;
      v14 = 1;
      LODWORD(v373) = 1;
      v371 = 1;
      v367 = 0x100000001;
      v363 = 1;
      LODWORD(v370) = 1;
      LOBYTE(v18) = 0;
      goto LABEL_374;
    }
  }

  else
  {
    disputeLastUpdatedDate4 = [(FHTransaction *)self disputeLastUpdatedDate];
    identifier4 = [(FHTransaction *)v7 disputeLastUpdatedDate];
    HIDWORD(v370) = 0;
    v163 = 0;
    v368 = 1;
    v158 = identifier4;
    v159 = disputeLastUpdatedDate4;
    if (disputeLastUpdatedDate4 != identifier4)
    {
      v422 = 1;
      v421 = 1;
      v420 = 1;
      v419 = 1;
      v418 = 1;
      v415 = 1;
      v412 = 1;
      v409 = 1;
      v406 = 1;
      v403 = 1;
      v401 = 1;
      v399 = 1;
      v396 = 1;
      v393 = 1;
      v390 = 1;
      v387 = 1;
      v385 = 1;
      v382 = 1;
      v381 = 1;
      v378 = 1;
      v375 = 0x100000001;
      v372 = 1;
      v369 = 1;
      v366 = 1;
      v362 = 1;
      v14 = 1;
      LODWORD(v373) = 1;
      v371 = 1;
      v367 = 0x100000001;
      v363 = 1;
      LOBYTE(v18) = 0;
      goto LABEL_374;
    }
  }

  proprietaryBankTransactionCode = [(FHTransaction *)self proprietaryBankTransactionCode];
  HIDWORD(v364) = proprietaryBankTransactionCode != 0;
  v156 = proprietaryBankTransactionCode;
  if (proprietaryBankTransactionCode && ([(FHTransaction *)v7 proprietaryBankTransactionCode], (v157 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    proprietaryBankTransactionCode2 = [(FHTransaction *)self proprietaryBankTransactionCode];
    proprietaryBankTransactionCode3 = [(FHTransaction *)v7 proprietaryBankTransactionCode];
    v155 = proprietaryBankTransactionCode2;
    identifier4 = [proprietaryBankTransactionCode2 isEqualToString:?];
    LODWORD(v364) = 0;
    v365 = 1;
    if ((identifier4 & 1) == 0)
    {
      v422 = 1;
      v421 = 1;
      v420 = 1;
      v419 = 1;
      v418 = 1;
      v415 = 1;
      v412 = 1;
      v409 = 1;
      v406 = 1;
      v403 = 1;
      v401 = 1;
      v399 = 1;
      v396 = 1;
      v393 = 1;
      v390 = 1;
      v387 = 1;
      v385 = 1;
      v382 = 1;
      v381 = 1;
      v378 = 1;
      v375 = 0x100000001;
      v372 = 1;
      v369 = 1;
      v366 = 1;
      v362 = 1;
      v14 = 1;
      LODWORD(v373) = 1;
      v371 = 1;
      v367 = 0x100000001;
      v363 = 1;
      HIDWORD(v361) = 1;
      HIDWORD(v364) = 1;
      LOBYTE(v18) = 0;
      goto LABEL_375;
    }
  }

  else
  {
    proprietaryBankTransactionCode4 = [(FHTransaction *)self proprietaryBankTransactionCode];
    identifier4 = [(FHTransaction *)v7 proprietaryBankTransactionCode];
    v365 = 0;
    v157 = 0;
    LODWORD(v364) = 1;
    v152 = identifier4;
    v153 = proprietaryBankTransactionCode4;
    if (proprietaryBankTransactionCode4 != identifier4)
    {
      v422 = 1;
      v421 = 1;
      v420 = 1;
      v419 = 1;
      v418 = 1;
      v415 = 1;
      v412 = 1;
      v409 = 1;
      v406 = 1;
      v403 = 1;
      v401 = 1;
      v399 = 1;
      v396 = 1;
      v393 = 1;
      v390 = 1;
      v387 = 1;
      v385 = 1;
      v382 = 1;
      v381 = 1;
      v378 = 1;
      v375 = 0x100000001;
      v372 = 1;
      v369 = 1;
      v366 = 1;
      v362 = 1;
      v14 = 1;
      LODWORD(v373) = 1;
      v371 = 1;
      v367 = 0x100000001;
      v363 = 1;
      HIDWORD(v361) = 1;
      LOBYTE(v18) = 0;
      goto LABEL_375;
    }
  }

  proprietaryBankTransactionIssuer = [(FHTransaction *)self proprietaryBankTransactionIssuer];
  v15 = proprietaryBankTransactionIssuer != 0;
  v150 = proprietaryBankTransactionIssuer;
  if (proprietaryBankTransactionIssuer && ([(FHTransaction *)v7 proprietaryBankTransactionIssuer], (v151 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    proprietaryBankTransactionIssuer2 = [(FHTransaction *)self proprietaryBankTransactionIssuer];
    financeAccountIdentifier2 = [(FHTransaction *)v7 proprietaryBankTransactionIssuer];
    v149 = proprietaryBankTransactionIssuer2;
    identifier4 = [proprietaryBankTransactionIssuer2 isEqualToString:financeAccountIdentifier2];
    LOBYTE(v18) = identifier4;
    v17 = 0;
    v422 = 1;
    v421 = 1;
    v420 = 1;
    v419 = 1;
    v418 = 1;
    v415 = 1;
    v412 = 1;
    v409 = 1;
    v406 = 1;
    v403 = 1;
    v401 = 1;
    v399 = 1;
    v396 = 1;
    v393 = 1;
    v390 = 1;
    v387 = 1;
    v385 = 1;
    v382 = 1;
    v381 = 1;
    v378 = 1;
    v375 = 0x100000001;
    v372 = 1;
    v369 = 1;
    v366 = 1;
    v362 = 1;
    v14 = 1;
    LODWORD(v373) = 1;
    v371 = 1;
    v367 = 0x100000001;
    v363 = 1;
    v361 = 0x100000001;
    v15 = 1;
    v16 = 1;
  }

  else
  {
    transactionServiceIdentifier3 = [(FHTransaction *)self proprietaryBankTransactionIssuer];
    identifier4 = [(FHTransaction *)v7 proprietaryBankTransactionIssuer];
    v151 = 0;
    v16 = 0;
    LOBYTE(v18) = transactionServiceIdentifier3 == identifier4;
    v422 = 1;
    v421 = 1;
    v420 = 1;
    v419 = 1;
    v418 = 1;
    v415 = 1;
    v412 = 1;
    v409 = 1;
    v406 = 1;
    v403 = 1;
    v401 = 1;
    v399 = 1;
    v396 = 1;
    v393 = 1;
    v390 = 1;
    v387 = 1;
    v385 = 1;
    v382 = 1;
    v381 = 1;
    v378 = 1;
    v375 = 0x100000001;
    v372 = 1;
    v369 = 1;
    v366 = 1;
    v362 = 1;
    v14 = 1;
    LODWORD(v373) = 1;
    v371 = 1;
    v367 = 0x100000001;
    v363 = 1;
    v361 = 0x100000001;
    v17 = 1;
  }

LABEL_24:
  if (v17)
  {
    v27 = v16;

    v16 = v27;
  }

  if (v16)
  {
  }

  if (v15)
  {
  }

  if (v361)
  {
  }

  if (v364)
  {
  }

  if (v365)
  {
  }

  if (HIDWORD(v364))
  {
  }

  if (HIDWORD(v361))
  {
  }

  if (v368)
  {
  }

  if (HIDWORD(v370))
  {
  }

  if (v370)
  {
  }

  if (v363)
  {
  }

  if (HIDWORD(v373))
  {
  }

  if (HIDWORD(v374))
  {
  }

  if (v374)
  {
  }

  if (v367)
  {
  }

  if (v376)
  {
  }

  if (v377)
  {
  }

  if (HIDWORD(v376))
  {
  }

  if (HIDWORD(v367))
  {
  }

  if (v379)
  {
  }

  if (v380)
  {
  }

  if (HIDWORD(v379))
  {
  }

  if (v371)
  {
  }

  if (v383)
  {
  }

  if (HIDWORD(v384))
  {
  }

  if (v384)
  {
  }

  if (v373)
  {
  }

  if (v386)
  {
  }

  if (v389)
  {
  }

  if (v388)
  {
  }

  if (v14)
  {
  }

  if (v391)
  {
  }

  if (v392)
  {
  }

  if (HIDWORD(v391))
  {
  }

  if (v362)
  {
  }

  if (v394)
  {
  }

  if (v395)
  {
  }

  if (HIDWORD(v394))
  {
  }

  if (v366)
  {
  }

  if (v397)
  {
  }

  if (v398)
  {
  }

  if (HIDWORD(v397))
  {
  }

  if (v369)
  {
  }

  if (v400)
  {
  }

  if (HIDWORD(v402))
  {
  }

  if (v402)
  {
  }

  if (v372)
  {
  }

  if (v404)
  {
  }

  if (HIDWORD(v405))
  {
  }

  if (v405)
  {
  }

  if (v375)
  {
  }

  if (v407)
  {
  }

  if (HIDWORD(v408))
  {
  }

  if (v408)
  {
  }

  if (HIDWORD(v375))
  {
  }

  if (v410)
  {
  }

  if (HIDWORD(v411))
  {
  }

  if (v411)
  {
  }

  if (v378)
  {
  }

  if (v413)
  {
  }

  if (HIDWORD(v414))
  {
  }

  if (v414)
  {
  }

  if (v381)
  {
  }

  if (v416)
  {
  }

  if (v417)
  {
  }

  if (v429)
  {
  }

  if (v382)
  {
  }

  if (v430)
  {
  }

  if (v432)
  {
  }

  if (HIDWORD(v430))
  {
  }

  if (v385)
  {
  }

  if (v431)
  {
  }

  if (HIDWORD(v431))
  {
  }

  if (v433)
  {
  }

  if (v387)
  {
  }

  if (v434)
  {
  }

  if (HIDWORD(v435))
  {
  }

  if (v435)
  {
  }

  if (v390)
  {
  }

  if (v436)
  {
  }

  if (HIDWORD(v437))
  {
  }

  if (v437)
  {
  }

  if (v393)
  {
  }

  if (v438)
  {
  }

  if (HIDWORD(v439))
  {
  }

  if (v439)
  {
  }

  if (v396)
  {
  }

  if (v440)
  {
  }

  if (HIDWORD(v441))
  {
  }

  if (v441)
  {
  }

  if (v399)
  {
  }

  if (v442)
  {
  }

  if (HIDWORD(v443))
  {
  }

  if (v443)
  {
  }

  if (v401)
  {
  }

  if (v444)
  {
  }

  if (HIDWORD(v445))
  {
  }

  if (v445)
  {
  }

  if (v403)
  {
  }

  if (v446)
  {
  }

  if (HIDWORD(v447))
  {
  }

  if (v447)
  {
  }

  if (v406)
  {
  }

  if (v448)
  {
  }

  if (HIDWORD(v449))
  {
  }

  if (v449)
  {
  }

  if (v409)
  {
  }

  if (v450)
  {
  }

  if (v423)
  {
  }

  if (HIDWORD(v423))
  {
  }

  if (v412)
  {
  }

  if (v424)
  {
  }

  if (HIDWORD(v424))
  {
  }

  if (v425)
  {
  }

  if (v415)
  {
  }

  if (v358)
  {
  }

  if (v359)
  {
  }

  if (v451)
  {
  }

  if (v418)
  {
  }

  if (HIDWORD(v452))
  {
  }

  if (v426)
  {
  }

  if (v452)
  {
  }

  if (v419)
  {
  }

  if (v453)
  {
  }

  if (v360)
  {
  }

  if (v454)
  {
  }

  if (v420)
  {
  }

  if (v427)
  {

    if (!v13)
    {
      goto LABEL_282;
    }
  }

  else if (!v13)
  {
LABEL_282:
    if (!HIDWORD(v427))
    {
      goto LABEL_284;
    }

    goto LABEL_283;
  }

  if (HIDWORD(v427))
  {
LABEL_283:
  }

LABEL_284:
  if (v421)
  {

    if (!v12)
    {
      goto LABEL_286;
    }
  }

  else if (!v12)
  {
LABEL_286:
    if (v11)
    {
      goto LABEL_287;
    }

    goto LABEL_294;
  }

  if (v11)
  {
LABEL_287:

    if (!v428)
    {
      goto LABEL_296;
    }

    goto LABEL_295;
  }

LABEL_294:
  if (v428)
  {
LABEL_295:
  }

LABEL_296:
  if (v422)
  {
  }

  if (v355)
  {
  }

  if (v356)
  {
  }

  if (identifier)
  {
  }

LABEL_305:
  return v18;
}

- (BOOL)bankConnectTransactionHasBeenUpdatedFrom:(id)from
{
  v183 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy == self)
  {
    v14 = 0;
    goto LABEL_118;
  }

  if (!fromCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v14 = 1;
    goto LABEL_118;
  }

  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  identifier = [(FHTransaction *)self identifier];
  if (!identifier || ([(FHTransaction *)v5 identifier], (v8 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    identifier2 = [(FHTransaction *)self identifier];
    identifier3 = [(FHTransaction *)v5 identifier];

    if (identifier)
    {
    }

    if (identifier2 == identifier3)
    {
      goto LABEL_7;
    }

LABEL_13:
    v17 = MEMORY[0x277CCACA8];
    identifier4 = [(FHTransaction *)v5 identifier];
    identifier5 = [(FHTransaction *)self identifier];
    v20 = [v17 stringWithFormat:@"Identifier %@ -> %@", identifier4, identifier5];
    [v6 addObject:v20];

    v13 = 0;
    goto LABEL_14;
  }

  v9 = v8;
  identifier6 = [(FHTransaction *)self identifier];
  identifier7 = [(FHTransaction *)v5 identifier];
  v12 = [identifier6 isEqualToString:identifier7];

  if ((v12 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  v13 = 1;
LABEL_14:
  financeTransactionSharedIdentifier = [(FHTransaction *)self financeTransactionSharedIdentifier];
  if (financeTransactionSharedIdentifier && ([(FHTransaction *)v5 financeTransactionSharedIdentifier], (v22 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v23 = v22;
    financeTransactionSharedIdentifier2 = [(FHTransaction *)self financeTransactionSharedIdentifier];
    financeTransactionSharedIdentifier3 = [(FHTransaction *)v5 financeTransactionSharedIdentifier];
    v26 = [financeTransactionSharedIdentifier2 isEqualToString:financeTransactionSharedIdentifier3];

    if (v26)
    {
LABEL_17:
      v172 = 1;
      goto LABEL_22;
    }
  }

  else
  {
    financeTransactionSharedIdentifier4 = [(FHTransaction *)self financeTransactionSharedIdentifier];
    financeTransactionSharedIdentifier5 = [(FHTransaction *)v5 financeTransactionSharedIdentifier];

    if (financeTransactionSharedIdentifier)
    {
    }

    if (financeTransactionSharedIdentifier4 == financeTransactionSharedIdentifier5)
    {
      goto LABEL_17;
    }
  }

  v29 = MEMORY[0x277CCACA8];
  financeTransactionSharedIdentifier6 = [(FHTransaction *)v5 financeTransactionSharedIdentifier];
  financeTransactionSharedIdentifier7 = [(FHTransaction *)self financeTransactionSharedIdentifier];
  v32 = [v29 stringWithFormat:@"Finance Shared Identifier %@ -> %@", financeTransactionSharedIdentifier6, financeTransactionSharedIdentifier7];
  [v6 addObject:v32];

  v172 = 0;
LABEL_22:
  financeTransactionSource = [(FHTransaction *)self financeTransactionSource];
  financeTransactionSource2 = [(FHTransaction *)v5 financeTransactionSource];
  v176 = financeTransactionSource;
  if (financeTransactionSource != financeTransactionSource2)
  {
    v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"Finance Transaction Source %lu -> %lu", -[FHTransaction financeTransactionSource](v5, "financeTransactionSource"), -[FHTransaction financeTransactionSource](self, "financeTransactionSource")];
    [v6 addObject:v34];
  }

  amount = [(FHTransaction *)self amount];
  if (!amount || ([(FHTransaction *)v5 amount], (v36 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    amount2 = [(FHTransaction *)self amount];
    amount3 = [(FHTransaction *)v5 amount];

    if (amount)
    {
    }

    if (amount2 == amount3)
    {
      goto LABEL_27;
    }

LABEL_31:
    v43 = [MEMORY[0x277CCACA8] stringWithFormat:@"Amount has changed"];
    [v6 addObject:v43];

    v168 = 0;
    goto LABEL_32;
  }

  v37 = v36;
  amount4 = [(FHTransaction *)self amount];
  amount5 = [(FHTransaction *)v5 amount];
  v40 = [amount4 isEqual:amount5];

  if ((v40 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_27:
  v168 = 1;
LABEL_32:
  currencyCode = [(FHTransaction *)self currencyCode];
  if (!currencyCode || ([(FHTransaction *)v5 currencyCode], (v45 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    currencyCode2 = [(FHTransaction *)self currencyCode];
    currencyCode3 = [(FHTransaction *)v5 currencyCode];

    if (currencyCode)
    {
    }

    if (currencyCode2 == currencyCode3)
    {
      goto LABEL_35;
    }

LABEL_39:
    v53 = MEMORY[0x277CCACA8];
    currencyCode4 = [(FHTransaction *)v5 currencyCode];
    currencyCode5 = [(FHTransaction *)self currencyCode];
    v56 = [v53 stringWithFormat:@"CurrencyCode %@ -> %@", currencyCode4, currencyCode5];
    [v6 addObject:v56];

    v50 = 0;
    goto LABEL_40;
  }

  v46 = v45;
  currencyCode6 = [(FHTransaction *)self currencyCode];
  currencyCode7 = [(FHTransaction *)v5 currencyCode];
  v49 = [currencyCode6 isEqualToString:currencyCode7];

  if ((v49 & 1) == 0)
  {
    goto LABEL_39;
  }

LABEL_35:
  v50 = 1;
LABEL_40:
  transactionDate = [(FHTransaction *)self transactionDate];
  [transactionDate timeIntervalSinceReferenceDate];
  v59 = v58;

  transactionDate2 = [(FHTransaction *)v5 transactionDate];
  [transactionDate2 timeIntervalSinceReferenceDate];
  v62 = v61;

  transactionDate3 = [(FHTransaction *)self transactionDate];
  if (!transactionDate3 || ([(FHTransaction *)v5 transactionDate], (v64 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    transactionDate4 = [(FHTransaction *)self transactionDate];
    transactionDate5 = [(FHTransaction *)v5 transactionDate];

    if (transactionDate3)
    {
    }

    if (transactionDate4 == transactionDate5)
    {
      goto LABEL_43;
    }

LABEL_47:
    v67 = [MEMORY[0x277CCACA8] stringWithFormat:@"TransactionDate %d -> %d", v62, v59];
    [v6 addObject:v67];

    v166 = 0;
    goto LABEL_48;
  }

  if (v59 != v62)
  {
    goto LABEL_47;
  }

LABEL_43:
  v166 = 1;
LABEL_48:
  displayName = [(FHTransaction *)self displayName];
  if (!displayName || ([(FHTransaction *)v5 displayName], (v69 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    displayName2 = [(FHTransaction *)self displayName];
    displayName3 = [(FHTransaction *)v5 displayName];

    if (displayName)
    {
    }

    if (displayName2 == displayName3)
    {
      goto LABEL_51;
    }

LABEL_55:
    v76 = [MEMORY[0x277CCACA8] stringWithFormat:@"DisplayName has changed"];
    [v6 addObject:v76];

    v170 = 0;
    goto LABEL_56;
  }

  v70 = v69;
  displayName4 = [(FHTransaction *)self displayName];
  displayName5 = [(FHTransaction *)v5 displayName];
  v73 = [displayName4 isEqual:displayName5];

  if ((v73 & 1) == 0)
  {
    goto LABEL_55;
  }

LABEL_51:
  v170 = 1;
LABEL_56:
  v77 = v13 & v172;
  merchantUniqueIdentifier = [(FHTransaction *)self merchantUniqueIdentifier];
  if (!merchantUniqueIdentifier || ([(FHTransaction *)v5 merchantUniqueIdentifier], (v79 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    merchantUniqueIdentifier2 = [(FHTransaction *)self merchantUniqueIdentifier];
    merchantUniqueIdentifier3 = [(FHTransaction *)v5 merchantUniqueIdentifier];

    if (merchantUniqueIdentifier)
    {
    }

    if (merchantUniqueIdentifier2 == merchantUniqueIdentifier3)
    {
      goto LABEL_59;
    }

LABEL_63:
    v86 = MEMORY[0x277CCACA8];
    merchantUniqueIdentifier4 = [(FHTransaction *)v5 merchantUniqueIdentifier];
    merchantUniqueIdentifier5 = [(FHTransaction *)self merchantUniqueIdentifier];
    v89 = [v86 stringWithFormat:@"MerchantUniqueIdentifier %@ -> %@", merchantUniqueIdentifier4, merchantUniqueIdentifier5];
    [v6 addObject:v89];

    v173 = 0;
    goto LABEL_64;
  }

  v80 = v79;
  merchantUniqueIdentifier6 = [(FHTransaction *)self merchantUniqueIdentifier];
  merchantUniqueIdentifier7 = [(FHTransaction *)v5 merchantUniqueIdentifier];
  v83 = [merchantUniqueIdentifier6 isEqualToString:merchantUniqueIdentifier7];

  if ((v83 & 1) == 0)
  {
    goto LABEL_63;
  }

LABEL_59:
  v173 = 1;
LABEL_64:
  v90 = v77 & v168;
  name = [(FHTransaction *)self name];
  if (!name || ([(FHTransaction *)v5 name], (v92 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    name2 = [(FHTransaction *)self name];
    name3 = [(FHTransaction *)v5 name];

    if (name)
    {
    }

    if (name2 == name3)
    {
      goto LABEL_67;
    }

LABEL_71:
    v100 = [MEMORY[0x277CCACA8] stringWithFormat:@"Merchant Name has changed"];
    [v6 addObject:v100];

    v97 = 0;
    goto LABEL_72;
  }

  v93 = v92;
  name4 = [(FHTransaction *)self name];
  name5 = [(FHTransaction *)v5 name];
  v96 = [name4 isEqualToString:name5];

  if ((v96 & 1) == 0)
  {
    goto LABEL_71;
  }

LABEL_67:
  v97 = 1;
LABEL_72:
  v101 = v90 & v50;
  proprietaryBankTransactionCode = [(FHTransaction *)self proprietaryBankTransactionCode];
  if (!proprietaryBankTransactionCode || ([(FHTransaction *)v5 proprietaryBankTransactionCode], (v103 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    proprietaryBankTransactionCode2 = [(FHTransaction *)self proprietaryBankTransactionCode];
    proprietaryBankTransactionCode3 = [(FHTransaction *)v5 proprietaryBankTransactionCode];

    if (proprietaryBankTransactionCode)
    {
    }

    if (proprietaryBankTransactionCode2 == proprietaryBankTransactionCode3)
    {
      goto LABEL_75;
    }

LABEL_79:
    v112 = MEMORY[0x277CCACA8];
    proprietaryBankTransactionCode4 = [(FHTransaction *)v5 proprietaryBankTransactionCode];
    proprietaryBankTransactionCode5 = [(FHTransaction *)self proprietaryBankTransactionCode];
    v114 = [v112 stringWithFormat:@"ProprietaryBankTransactionCode %@ -> %@", proprietaryBankTransactionCode4, proprietaryBankTransactionCode5];
    v109 = v6;
    [v6 addObject:v114];

    v164 = 0;
    goto LABEL_80;
  }

  v104 = v103;
  proprietaryBankTransactionCode6 = [(FHTransaction *)self proprietaryBankTransactionCode];
  [(FHTransaction *)v5 proprietaryBankTransactionCode];
  v107 = v106 = v97;
  v108 = [proprietaryBankTransactionCode6 isEqualToString:v107];

  v97 = v106;
  if ((v108 & 1) == 0)
  {
    goto LABEL_79;
  }

LABEL_75:
  v109 = v6;
  v164 = 1;
LABEL_80:
  v116 = v101 & v166;
  proprietaryBankTransactionIssuer = [(FHTransaction *)self proprietaryBankTransactionIssuer];
  if (proprietaryBankTransactionIssuer && ([(FHTransaction *)v5 proprietaryBankTransactionIssuer], (v118 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v119 = v118;
    proprietaryBankTransactionIssuer2 = [(FHTransaction *)self proprietaryBankTransactionIssuer];
    [(FHTransaction *)v5 proprietaryBankTransactionIssuer];
    v122 = v121 = v97;
    v123 = [proprietaryBankTransactionIssuer2 isEqualToString:v122];

    v97 = v121;
    if (v123)
    {
LABEL_83:
      v124 = 1;
      goto LABEL_88;
    }
  }

  else
  {
    proprietaryBankTransactionIssuer3 = [(FHTransaction *)self proprietaryBankTransactionIssuer];
    proprietaryBankTransactionIssuer4 = [(FHTransaction *)v5 proprietaryBankTransactionIssuer];

    if (proprietaryBankTransactionIssuer)
    {
    }

    if (proprietaryBankTransactionIssuer3 == proprietaryBankTransactionIssuer4)
    {
      goto LABEL_83;
    }
  }

  v127 = MEMORY[0x277CCACA8];
  proprietaryBankTransactionIssuer5 = [(FHTransaction *)v5 proprietaryBankTransactionIssuer];
  proprietaryBankTransactionIssuer6 = [(FHTransaction *)self proprietaryBankTransactionIssuer];
  v129 = [v127 stringWithFormat:@"ProprietaryBankTransactionIssuer %@ -> %@", proprietaryBankTransactionIssuer5, proprietaryBankTransactionIssuer6];
  [v109 addObject:v129];

  v124 = 0;
LABEL_88:
  v131 = v116 & v170;
  transactionType = [(FHTransaction *)self transactionType];
  transactionType2 = [(FHTransaction *)v5 transactionType];
  v171 = transactionType;
  if (transactionType != transactionType2)
  {
    v133 = [MEMORY[0x277CCACA8] stringWithFormat:@"TransactionType %lu -> %lu", -[FHTransaction transactionType](v5, "transactionType"), -[FHTransaction transactionType](self, "transactionType")];
    [v109 addObject:v133];
  }

  v134 = v131 & v173;
  accountType = [(FHTransaction *)self accountType];
  accountType2 = [(FHTransaction *)v5 accountType];
  if (accountType != accountType2)
  {
    v135 = [MEMORY[0x277CCACA8] stringWithFormat:@"AccountType %lu -> %lu", -[FHTransaction accountType](v5, "accountType"), -[FHTransaction accountType](self, "accountType")];
    [v109 addObject:v135];
  }

  mapsMerchantID = [(FHTransaction *)self mapsMerchantID];
  mapsMerchantID2 = [(FHTransaction *)v5 mapsMerchantID];
  v163 = mapsMerchantID;
  if (mapsMerchantID != mapsMerchantID2)
  {
    v137 = [MEMORY[0x277CCACA8] stringWithFormat:@"MapsMerchantID %llu -> %llu", -[FHTransaction mapsMerchantID](v5, "mapsMerchantID"), -[FHTransaction mapsMerchantID](self, "mapsMerchantID")];
    [v109 addObject:v137];
  }

  v138 = v134 & v97 & v164;
  mapsMerchantBrandID = [(FHTransaction *)self mapsMerchantBrandID];
  mapsMerchantBrandID2 = [(FHTransaction *)v5 mapsMerchantBrandID];
  if (mapsMerchantBrandID != mapsMerchantBrandID2)
  {
    v141 = [MEMORY[0x277CCACA8] stringWithFormat:@"MapsMerchantBrandID %llu -> %llu", -[FHTransaction mapsMerchantBrandID](v5, "mapsMerchantBrandID"), -[FHTransaction mapsMerchantBrandID](self, "mapsMerchantBrandID")];
    [v109 addObject:v141];
  }

  v142 = v138 & v124;
  transactionDescription = [(FHTransaction *)self transactionDescription];
  if (!transactionDescription || ([(FHTransaction *)v5 transactionDescription], (v144 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    transactionDescription2 = [(FHTransaction *)self transactionDescription];
    transactionDescription3 = [(FHTransaction *)v5 transactionDescription];

    if (transactionDescription)
    {
    }

    if (transactionDescription2 == transactionDescription3)
    {
      goto LABEL_99;
    }

LABEL_103:
    v154 = [MEMORY[0x277CCACA8] stringWithFormat:@"TransactionDescription has changed"];
    [v109 addObject:v154];

    v151 = 0;
    goto LABEL_104;
  }

  v145 = v144;
  transactionDescription4 = [(FHTransaction *)self transactionDescription];
  [(FHTransaction *)v5 transactionDescription];
  v147 = mapsMerchantBrandID;
  v148 = v142;
  v150 = v149 = v109;
  v165 = [transactionDescription4 isEqualToString:v150];

  v109 = v149;
  v142 = v148;
  mapsMerchantBrandID = v147;

  if ((v165 & 1) == 0)
  {
    goto LABEL_103;
  }

LABEL_99:
  v151 = 1;
LABEL_104:
  v155 = mapsMerchantBrandID != mapsMerchantBrandID2;
  v156 = v142 & v151 ^ 1;
  if (v176 != financeTransactionSource2)
  {
    v156 = 1;
  }

  if (v171 != transactionType2)
  {
    v156 = 1;
  }

  if (accountType != accountType2)
  {
    v156 = 1;
  }

  if (v163 != mapsMerchantID2)
  {
    v156 = 1;
  }

  v14 = v155 | v156;
  if (((v155 | v156) & 1) != 0 && [v109 count])
  {
    v157 = FinHealthLogObject(@"FinHealthCore");
    if (os_log_type_enabled(v157, OS_LOG_TYPE_DEBUG))
    {
      identifier8 = [(FHTransaction *)self identifier];
      v159 = [v109 componentsJoinedByString:@"\n"];
      *buf = 136315651;
      v178 = "[FHTransaction bankConnectTransactionHasBeenUpdatedFrom:]";
      v179 = 2113;
      v180 = identifier8;
      v181 = 2113;
      v182 = v159;
      _os_log_impl(&dword_226DD4000, v157, OS_LOG_TYPE_DEBUG, "%sTransaction %{private}@ has been updated:\n%{private}@", buf, 0x20u);
    }
  }

LABEL_118:
  v160 = *MEMORY[0x277D85DE8];
  return v14 & 1;
}

- (FHTransaction)initWithDictionary:(id)dictionary dateFormatter:(id)formatter
{
  dictionaryCopy = dictionary;
  formatterCopy = formatter;
  v122.receiver = self;
  v122.super_class = FHTransaction;
  v8 = [(FHTransaction *)&v122 init];
  if (v8)
  {
    v9 = [dictionaryCopy valueForKey:@"identifier"];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    v11 = [dictionaryCopy valueForKey:@"serviceIdentifier"];
    transactionServiceIdentifier = v8->_transactionServiceIdentifier;
    v8->_transactionServiceIdentifier = v11;

    v13 = [dictionaryCopy valueForKey:@"financeAccountIdentifier"];
    financeAccountIdentifier = v8->_financeAccountIdentifier;
    v8->_financeAccountIdentifier = v13;

    v15 = [dictionaryCopy valueForKey:@"financeTransactionIdentifier"];
    financeTransactionIdentifier = v8->_financeTransactionIdentifier;
    v8->_financeTransactionIdentifier = v15;

    v17 = [dictionaryCopy valueForKey:@"financeTransactionIdentifier"];
    financeTransactionSharedIdentifier = v8->_financeTransactionSharedIdentifier;
    v8->_financeTransactionSharedIdentifier = v17;

    v19 = [dictionaryCopy valueForKey:@"financeTransactionSource"];
    v8->_financeTransactionSource = [v19 integerValue];

    v20 = [dictionaryCopy valueForKey:@"paymentHash"];
    paymentHash = v8->_paymentHash;
    v8->_paymentHash = v20;

    v22 = [dictionaryCopy valueForKey:@"transactionSourceIdentifier"];
    transactionSourceIdentifier = v8->_transactionSourceIdentifier;
    v8->_transactionSourceIdentifier = v22;

    v24 = [dictionaryCopy valueForKey:@"amount"];

    if (v24)
    {
      v25 = objc_alloc(MEMORY[0x277CCA980]);
      v26 = [dictionaryCopy valueForKey:@"amount"];
      [v26 doubleValue];
      v27 = [v25 initWithDouble:?];
      amount = v8->_amount;
      v8->_amount = v27;
    }

    v29 = [dictionaryCopy valueForKey:@"currencyCode"];
    currencyCode = v8->_currencyCode;
    v8->_currencyCode = v29;

    v31 = [dictionaryCopy valueForKey:@"transactionDate"];
    v32 = [formatterCopy dateFromString:v31];
    transactionDate = v8->_transactionDate;
    v8->_transactionDate = v32;

    v34 = [dictionaryCopy valueForKey:@"transactionStatusChangedDate"];
    v35 = [formatterCopy dateFromString:v34];
    transactionStatusChangedDate = v8->_transactionStatusChangedDate;
    v8->_transactionStatusChangedDate = v35;

    v37 = [dictionaryCopy valueForKey:@"transactionStatus"];
    v8->_transactionStatus = [v37 integerValue];

    v38 = [dictionaryCopy valueForKey:@"transactionSource"];
    v8->_transactionSource = [v38 integerValue];

    v39 = [dictionaryCopy valueForKey:@"cardType"];
    v8->_cardType = [v39 integerValue];

    v40 = [dictionaryCopy valueForKey:@"transactionType"];
    v8->_transactionType = [v40 integerValue];

    v41 = [dictionaryCopy valueForKey:@"accountType"];
    v8->_accountType = [v41 integerValue];

    v42 = [dictionaryCopy valueForKey:@"transactionInternalState"];
    v8->_transactionInternalState = [v42 integerValue];

    v43 = [dictionaryCopy valueForKey:@"street"];
    street = v8->_street;
    v8->_street = v43;

    v45 = [dictionaryCopy valueForKey:@"city"];
    city = v8->_city;
    v8->_city = v45;

    v47 = [dictionaryCopy valueForKey:@"state"];
    state = v8->_state;
    v8->_state = v47;

    v49 = [dictionaryCopy valueForKey:@"zip"];
    zip = v8->_zip;
    v8->_zip = v49;

    v51 = [dictionaryCopy valueForKey:@"countryCode"];
    countryCode = v8->_countryCode;
    v8->_countryCode = v51;

    v53 = [dictionaryCopy valueForKey:@"altDSID"];
    altDSID = v8->_altDSID;
    v8->_altDSID = v53;

    v55 = [dictionaryCopy valueForKey:@"receiptIdentifier"];
    receiptIdentifier = v8->_receiptIdentifier;
    v8->_receiptIdentifier = v55;

    v57 = [dictionaryCopy valueForKey:@"associatedReceiptUniqueID"];
    associatedReceiptUniqueID = v8->_associatedReceiptUniqueID;
    v8->_associatedReceiptUniqueID = v57;

    v59 = [dictionaryCopy valueForKey:@"country"];
    country = v8->_country;
    v8->_country = v59;

    v61 = [dictionaryCopy valueForKey:@"merchantUniqueIdentifier"];
    merchantUniqueIdentifier = v8->_merchantUniqueIdentifier;
    v8->_merchantUniqueIdentifier = v61;

    v63 = [dictionaryCopy valueForKey:@"name"];
    name = v8->_name;
    v8->_name = v63;

    v65 = [dictionaryCopy valueForKey:@"rawName"];
    rawName = v8->_rawName;
    v8->_rawName = v65;

    v67 = [dictionaryCopy valueForKey:@"industryCode"];
    v8->_industryCode = [v67 integerValue];

    v68 = [dictionaryCopy valueForKey:@"category"];
    v8->_category = [v68 integerValue];

    v69 = [dictionaryCopy valueForKey:@"merchantDetailedCategory"];
    merchantDetailedCategory = v8->_merchantDetailedCategory;
    v8->_merchantDetailedCategory = v69;

    v71 = [dictionaryCopy valueForKey:@"industryCategory"];
    industryCategory = v8->_industryCategory;
    v8->_industryCategory = v71;

    v73 = [dictionaryCopy valueForKey:@"displayName"];
    displayName = v8->_displayName;
    v8->_displayName = v73;

    v75 = [dictionaryCopy valueForKey:@"mapsMerchantID"];
    v8->_mapsMerchantID = [v75 unsignedLongLongValue];

    v76 = [dictionaryCopy valueForKey:@"mapsMerchantResultProviderID"];
    v8->_mapsMerchantResultProviderID = [v76 integerValue];

    v77 = [dictionaryCopy valueForKey:@"mapsMerchantBrandID"];
    v8->_mapsMerchantBrandID = [v77 unsignedLongLongValue];

    v78 = [dictionaryCopy valueForKey:@"mapsMerchantBrandResultProviderID"];
    v8->_mapsMerchantBrandResultProviderID = [v78 integerValue];

    v79 = [dictionaryCopy valueForKey:@"locationLatitude"];
    [v79 doubleValue];
    v81 = v80;

    v82 = [dictionaryCopy valueForKey:@"locationLongitude"];
    [v82 doubleValue];
    v84 = v83;

    v85 = CLLocationCoordinate2DMake(v81, v84);
    if ((v81 != 0.0 || v84 != 0.0) && CLLocationCoordinate2DIsValid(v85))
    {
      v86 = objc_alloc(MEMORY[0x277CE41F8]);
      v87 = [dictionaryCopy valueForKey:@"locationHorizontalAccuracy"];
      [v87 doubleValue];
      v89 = v88;
      v90 = [dictionaryCopy valueForKey:@"locationVerticalAccuracy"];
      [v90 doubleValue];
      v92 = v91;
      v93 = [MEMORY[0x277CBEAA8] now];
      v94 = [v86 initWithCoordinate:v93 altitude:v85.latitude horizontalAccuracy:v85.longitude verticalAccuracy:0.0 timestamp:{v89, v92}];
      location = v8->_location;
      v8->_location = v94;
    }

    v96 = [dictionaryCopy valueForKey:@"timeZone"];

    if (v96)
    {
      v97 = MEMORY[0x277CBEBB0];
      v98 = [dictionaryCopy valueForKey:@"timeZone"];
      v99 = [v97 timeZoneForSecondsFromGMT:{objc_msgSend(v98, "integerValue")}];
      timeZone = v8->_timeZone;
      v8->_timeZone = v99;
    }

    v101 = [dictionaryCopy valueForKey:@"disputeType"];
    v8->_disputeType = [v101 integerValue];

    v102 = [dictionaryCopy valueForKey:@"disputeStatus"];
    v8->_disputeStatus = [v102 integerValue];

    v103 = [dictionaryCopy valueForKey:@"peerPaymentCounterpartHandle"];
    peerPaymentCounterpartHandle = v8->_peerPaymentCounterpartHandle;
    v8->_peerPaymentCounterpartHandle = v103;

    v105 = [dictionaryCopy valueForKey:@"peerPaymentType"];
    v8->_peerPaymentType = [v105 integerValue];

    v106 = [dictionaryCopy valueForKey:@"transactionDescription"];
    transactionDescription = v8->_transactionDescription;
    v8->_transactionDescription = v106;

    v108 = [dictionaryCopy valueForKey:@"processedDescription"];
    processedDescription = v8->_processedDescription;
    v8->_processedDescription = v108;

    v110 = [dictionaryCopy valueForKey:@"recurring"];
    v8->_recurring = v110 != 0;

    v111 = [dictionaryCopy valueForKey:@"disputeOpenDate"];
    v112 = [formatterCopy dateFromString:v111];
    disputeOpenDate = v8->_disputeOpenDate;
    v8->_disputeOpenDate = v112;

    v114 = [dictionaryCopy valueForKey:@"disputeLastUpdatedDate"];
    v115 = [formatterCopy dateFromString:v114];
    disputeLastUpdatedDate = v8->_disputeLastUpdatedDate;
    v8->_disputeLastUpdatedDate = v115;

    v117 = [dictionaryCopy valueForKey:@"proprietaryBankTransactionCode"];
    proprietaryBankTransactionCode = v8->_proprietaryBankTransactionCode;
    v8->_proprietaryBankTransactionCode = v117;

    v119 = [dictionaryCopy valueForKey:@"proprietaryBankTransactionIssuer"];
    proprietaryBankTransactionIssuer = v8->_proprietaryBankTransactionIssuer;
    v8->_proprietaryBankTransactionIssuer = v119;
  }

  return v8;
}

- (FHTransaction)initWithDictionary:(id)dictionary
{
  v4 = MEMORY[0x277CCA968];
  dictionaryCopy = dictionary;
  v6 = objc_alloc_init(v4);
  [v6 setDateFormat:@"yyyy-MM-dd HH:mm:ss Z"];
  v7 = [(FHTransaction *)self initWithDictionary:dictionaryCopy dateFormatter:v6];

  return v7;
}

- (FHTransaction)initWithJsonString:(id)string
{
  v4 = [string dataUsingEncoding:4];
  v5 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v4 options:0 error:0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    self = [(FHTransaction *)self initWithDictionary:v5];
  }

  selfCopy = self;

  return selfCopy;
}

- (id)toDictionary
{
  v3 = objc_opt_new();
  [v3 safelySetObject:self->_identifier forKey:@"identifier"];
  [v3 safelySetObject:self->_transactionServiceIdentifier forKey:@"serviceIdentifier"];
  [v3 safelySetObject:self->_financeAccountIdentifier forKey:@"financeAccountIdentifier"];
  [v3 safelySetObject:self->_financeTransactionIdentifier forKey:@"financeTransactionIdentifier"];
  [v3 safelySetObject:self->_financeTransactionSharedIdentifier forKey:@"financeTransactionSharedIdentifier"];
  [v3 safelySetObject:self->_paymentHash forKey:@"paymentHash"];
  [v3 safelySetObject:self->_transactionSourceIdentifier forKey:@"transactionSourceIdentifier"];
  [v3 safelySetObject:self->_amount forKey:@"amount"];
  [v3 safelySetObject:self->_currencyCode forKey:@"currencyCode"];
  [v3 setDate:self->_transactionDate forKey:@"transactionDate"];
  [v3 setDate:self->_transactionStatusChangedDate forKey:@"transactionStatusChangedDate"];
  [v3 setInteger:self->_transactionStatus forKey:@"transactionStatus"];
  [v3 setInteger:self->_transactionSource forKey:@"transactionSource"];
  [v3 setInteger:self->_cardType forKey:@"cardType"];
  [v3 setInteger:self->_transactionType forKey:@"transactionType"];
  [v3 setInteger:self->_accountType forKey:@"accountType"];
  [v3 safelySetObject:self->_altDSID forKey:@"altDSID"];
  [v3 safelySetObject:self->_receiptIdentifier forKey:@"receiptIdentifier"];
  [v3 safelySetObject:self->_associatedReceiptUniqueID forKey:@"associatedReceiptUniqueID"];
  [v3 setInteger:self->_transactionInternalState forKey:@"transactionInternalState"];
  [v3 setInteger:-[NSTimeZone secondsFromGMT](self->_timeZone forKey:{"secondsFromGMT"), @"timeZone"}];
  [v3 safelySetObject:self->_merchantUniqueIdentifier forKey:@"merchantUniqueIdentifier"];
  [v3 safelySetObject:self->_name forKey:@"name"];
  [v3 safelySetObject:self->_rawName forKey:@"rawName"];
  [v3 setInteger:self->_industryCode forKey:@"industryCode"];
  [v3 setInteger:self->_category forKey:@"category"];
  [v3 safelySetObject:self->_industryCategory forKey:@"industryCategory"];
  [v3 safelySetObject:self->_displayName forKey:@"displayName"];
  [v3 safelySetObject:self->_street forKey:@"street"];
  [v3 safelySetObject:self->_city forKey:@"city"];
  [v3 safelySetObject:self->_state forKey:@"state"];
  [v3 safelySetObject:self->_zip forKey:@"zip"];
  [v3 safelySetObject:self->_countryCode forKey:@"countryCode"];
  [v3 safelySetObject:self->_country forKey:@"country"];
  [v3 safelySetObject:self->_merchantDetailedCategory forKey:@"merchantDetailedCategory"];
  [v3 setUnsignedLongLong:self->_mapsMerchantID forKey:@"mapsMerchantID"];
  [v3 setInt32:self->_mapsMerchantResultProviderID forKey:@"mapsMerchantResultProviderID"];
  [v3 setUnsignedLongLong:self->_mapsMerchantBrandID forKey:@"mapsMerchantBrandID"];
  [v3 setInt32:self->_mapsMerchantBrandResultProviderID forKey:@"mapsMerchantBrandResultProviderID"];
  [v3 safelySetObject:self->_location forKey:@"location"];
  [v3 setInteger:self->_disputeType forKey:@"disputeType"];
  [v3 setInteger:self->_disputeStatus forKey:@"disputeStatus"];
  [v3 safelySetObject:self->_peerPaymentCounterpartHandle forKey:@"peerPaymentCounterpartHandle"];
  [v3 setInteger:self->_peerPaymentType forKey:@"peerPaymentType"];
  [v3 safelySetObject:self->_transactionDescription forKey:@"transactionDescription"];
  [v3 safelySetObject:self->_processedDescription forKey:@"processedDescription"];
  [v3 setBool:self->_recurring forKey:@"recurring"];
  [v3 safelySetObject:self->_disputeOpenDate forKey:@"disputeOpenDate"];
  [v3 safelySetObject:self->_disputeLastUpdatedDate forKey:@"disputeLastUpdatedDate"];
  [v3 safelySetObject:self->_proprietaryBankTransactionCode forKey:@"proprietaryBankTransactionCode"];
  [v3 safelySetObject:self->_proprietaryBankTransactionIssuer forKey:@"proprietaryBankTransactionIssuer"];
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v3];

  return v4;
}

- (id)toJson:(id)json
{
  jsonCopy = json;
  toDictionary = [(FHTransaction *)self toDictionary];
  v10 = jsonCopy;
  v6 = [MEMORY[0x277CCAAA0] dataWithJSONObject:toDictionary options:2 error:&v10];
  v7 = v10;

  if (v6)
  {
    v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v6 encoding:4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)fhProperties
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__FHTransaction_fhProperties__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (fhProperties_onceToken != -1)
  {
    dispatch_once(&fhProperties_onceToken, block);
  }

  v2 = fhProperties__fhProperties;

  return v2;
}

void __29__FHTransaction_fhProperties__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB98]);
  v3 = fhProperties__fhProperties;
  fhProperties__fhProperties = v2;

  v4 = objc_opt_new();
  outCount = 0;
  v5 = *(a1 + 32);
  v6 = objc_opt_class();
  v7 = class_copyIvarList(v6, &outCount);
  if (outCount)
  {
    for (i = 0; i < outCount; ++i)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:ivar_getName(v7[i])];
      v10 = [v9 substringFromIndex:1];
      [v4 addObject:v10];
    }
  }

  free(v7);
  v11 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v4];
  v12 = fhProperties__fhProperties;
  fhProperties__fhProperties = v11;
}

+ (id)_allowedCountryNamesForMapsMerchant
{
  if (_allowedCountryNamesForMapsMerchant_onceToken != -1)
  {
    +[FHTransaction _allowedCountryNamesForMapsMerchant];
  }

  v3 = _allowedCountryNamesForMapsMerchant__allowedCountryNames;

  return v3;
}

uint64_t __52__FHTransaction__allowedCountryNamesForMapsMerchant__block_invoke()
{
  _allowedCountryNamesForMapsMerchant__allowedCountryNames = [MEMORY[0x277CBEB98] setWithObjects:{@"USA", @"usa", @"United States", 0}];

  return MEMORY[0x2821F96F8]();
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"%@: '%@'; ", @"identifier", self->_identifier];
  [v3 appendFormat:@"%@: '%@'; ", @"serviceIdentifier", self->_transactionServiceIdentifier];
  [v3 appendFormat:@"%@: '%@'; ", @"financeAccountIdentifier", self->_financeAccountIdentifier];
  [v3 appendFormat:@"%@: '%@'; ", @"financeTransactionIdentifier", self->_financeTransactionIdentifier];
  [v3 appendFormat:@"%@: '%@'; ", @"financeTransactionSharedIdentifier", self->_financeTransactionSharedIdentifier];
  [v3 appendFormat:@"%@: '%lu'; ", @"financeTransactionSource", self->_financeTransactionSource];
  [v3 appendFormat:@"%@: '%@'; ", @"paymentHash", self->_paymentHash];
  [v3 appendFormat:@"%@: '%@'; ", @"transactionSourceIdentifier", self->_transactionSourceIdentifier];
  [v3 appendFormat:@"%@: '%@'; ", @"amount", self->_amount];
  [v3 appendFormat:@"%@: '%@'; ", @"currencyCode", self->_currencyCode];
  [v3 appendFormat:@"%@: '%@'; ", @"transactionDate", self->_transactionDate];
  [v3 appendFormat:@"%@: '%@'; ", @"transactionStatusChangedDate", self->_transactionStatusChangedDate];
  [v3 appendFormat:@"%@: '%lu'; ", @"transactionStatus", self->_transactionStatus];
  [v3 appendFormat:@"%@: '%lu'; ", @"transactionSource", self->_transactionSource];
  [v3 appendFormat:@"%@: '%lu'; ", @"cardType", self->_cardType];
  [v3 appendFormat:@"%@: '%lu'; ", @"transactionType", self->_transactionType];
  [v3 appendFormat:@"%@: '%lu'; ", @"accountType", self->_accountType];
  [v3 appendFormat:@"%@: '%@'; ", @"altDSID", self->_altDSID];
  [v3 appendFormat:@"%@: '%@'; ", @"receiptIdentifier", self->_receiptIdentifier];
  [v3 appendFormat:@"%@: '%@'; ", @"associatedReceiptUniqueID", self->_associatedReceiptUniqueID];
  [v3 appendFormat:@"%@: '%lu'; ", @"transactionInternalState", self->_transactionInternalState];
  timeZone = self->_timeZone;
  if (timeZone)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithInteger:{-[NSTimeZone secondsFromGMT](timeZone, "secondsFromGMT")}];
    [v3 appendFormat:@"%@: '%@'; ", @"timeZone", v5];
  }

  else
  {
    [v3 appendFormat:@"%@: '%@'; ", @"timeZone", 0];
  }

  [v3 appendFormat:@"%@: '%@'; ", @"merchantUniqueIdentifier", self->_merchantUniqueIdentifier];
  [v3 appendFormat:@"%@: '%@'; ", @"name", self->_name];
  [v3 appendFormat:@"%@: '%@'; ", @"rawName", self->_rawName];
  [v3 appendFormat:@"%@: '%lu'; ", @"industryCode", self->_industryCode];
  [v3 appendFormat:@"%@: '%lu'; ", @"category", self->_category];
  [v3 appendFormat:@"%@: '%@'; ", @"industryCategory", self->_industryCategory];
  [v3 appendFormat:@"%@: '%@'; ", @"displayName", self->_displayName];
  [v3 appendFormat:@"%@: '%@'; ", @"street", self->_street];
  [v3 appendFormat:@"%@: '%@'; ", @"city", self->_city];
  [v3 appendFormat:@"%@: '%@'; ", @"state", self->_state];
  [v3 appendFormat:@"%@: '%@'; ", @"zip", self->_zip];
  [v3 appendFormat:@"%@: '%@'; ", @"countryCode", self->_countryCode];
  [v3 appendFormat:@"%@: '%@'; ", @"country", self->_country];
  [v3 appendFormat:@"%@: '%@'; ", @"merchantDetailedCategory", self->_merchantDetailedCategory];
  [v3 appendFormat:@"%@: '%llu'; ", @"mapsMerchantID", self->_mapsMerchantID];
  [v3 appendFormat:@"%@: '%d'; ", @"mapsMerchantResultProviderID", self->_mapsMerchantResultProviderID];
  [v3 appendFormat:@"%@: '%llu'; ", @"mapsMerchantBrandID", self->_mapsMerchantBrandID];
  [v3 appendFormat:@"%@: '%d'; ", @"mapsMerchantBrandResultProviderID", self->_mapsMerchantBrandResultProviderID];
  [(CLLocation *)self->_location coordinate];
  [v3 appendFormat:@"%@: '%f'; ", @"locationLatitude", v6];
  [(CLLocation *)self->_location coordinate];
  [v3 appendFormat:@"%@: '%f'; ", @"locationLongitude", v7];
  [(CLLocation *)self->_location horizontalAccuracy];
  [v3 appendFormat:@"%@: '%f'; ", @"locationHorizontalAccuracy", v8];
  [(CLLocation *)self->_location verticalAccuracy];
  [v3 appendFormat:@"%@: '%f'; ", @"locationVerticalAccuracy", v9];
  [v3 appendFormat:@"%@: '%lu'; ", @"disputeType", self->_disputeType];
  [v3 appendFormat:@"%@: '%lu'; ", @"disputeStatus", self->_disputeStatus];
  [v3 appendFormat:@"%@: '%@'; ", @"disputeOpenDate", self->_disputeOpenDate];
  [v3 appendFormat:@"%@: '%@'; ", @"disputeLastUpdatedDate", self->_disputeLastUpdatedDate];
  [v3 appendFormat:@"%@: '%@'; ", @"peerPaymentCounterpartHandle", self->_peerPaymentCounterpartHandle];
  [v3 appendFormat:@"%@: '%lu'; ", @"peerPaymentType", self->_peerPaymentType];
  [v3 appendFormat:@"%@: '%@'; ", @"transactionDescription", self->_transactionDescription];
  [v3 appendFormat:@"%@: '%@'; ", @"processedDescription", self->_processedDescription];
  [v3 appendFormat:@"%@: '%d'; ", @"recurring", self->_recurring];
  [v3 appendFormat:@"%@: '%@'; ", @"proprietaryBankTransactionCode", self->_proprietaryBankTransactionCode];
  [v3 appendFormat:@"%@: '%@'; ", @"proprietaryBankTransactionIssuer", self->_proprietaryBankTransactionIssuer];
  [v3 appendFormat:@">"];

  return v3;
}

- (BOOL)hasLocation
{
  location = [(FHTransaction *)self location];
  if (location)
  {
    location2 = [(FHTransaction *)self location];
    [location2 coordinate];
    if (v5 == 0.0)
    {
      v8 = 0;
    }

    else
    {
      location3 = [(FHTransaction *)self location];
      [location3 coordinate];
      v8 = v7 != 0.0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end