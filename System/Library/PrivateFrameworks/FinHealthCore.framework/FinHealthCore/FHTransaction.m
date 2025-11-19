@interface FHTransaction
+ (id)_allowedCountryNamesForMapsMerchant;
+ (id)fhProperties;
- (BOOL)bankConnectTransactionHasBeenUpdatedFrom:(id)a3;
- (BOOL)hasLocation;
- (BOOL)isEqual:(id)a3;
- (FHTransaction)initWithCoder:(id)a3;
- (FHTransaction)initWithDictionary:(id)a3;
- (FHTransaction)initWithDictionary:(id)a3 dateFormatter:(id)a4;
- (FHTransaction)initWithJsonString:(id)a3;
- (id)description;
- (id)toDictionary;
- (id)toJson:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FHTransaction

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(FHTransaction *)self identifier];
  [v4 encodeObject:v5 forKey:@"identifier"];

  v6 = [(FHTransaction *)self transactionServiceIdentifier];
  [v4 encodeObject:v6 forKey:@"serviceIdentifier"];

  v7 = [(FHTransaction *)self financeAccountIdentifier];
  [v4 encodeObject:v7 forKey:@"financeAccountIdentifier"];

  v8 = [(FHTransaction *)self financeTransactionIdentifier];
  [v4 encodeObject:v8 forKey:@"financeTransactionIdentifier"];

  v9 = [(FHTransaction *)self financeTransactionSharedIdentifier];
  [v4 encodeObject:v9 forKey:@"financeTransactionSharedIdentifier"];

  [v4 encodeInteger:-[FHTransaction financeTransactionSource](self forKey:{"financeTransactionSource"), @"financeTransactionSource"}];
  v10 = [(FHTransaction *)self paymentHash];
  [v4 encodeObject:v10 forKey:@"paymentHash"];

  v11 = [(FHTransaction *)self amount];
  [v4 encodeObject:v11 forKey:@"amount"];

  v12 = [(FHTransaction *)self currencyCode];
  [v4 encodeObject:v12 forKey:@"currencyCode"];

  v13 = [(FHTransaction *)self transactionDate];
  [v4 encodeObject:v13 forKey:@"transactionDate"];

  v14 = [(FHTransaction *)self transactionStatusChangedDate];
  [v4 encodeObject:v14 forKey:@"transactionStatusChangedDate"];

  v15 = [(FHTransaction *)self transactionSourceIdentifier];
  [v4 encodeObject:v15 forKey:@"transactionSourceIdentifier"];

  [v4 encodeInteger:-[FHTransaction transactionStatus](self forKey:{"transactionStatus"), @"transactionStatus"}];
  [v4 encodeInteger:-[FHTransaction transactionSource](self forKey:{"transactionSource"), @"transactionSource"}];
  [v4 encodeInteger:-[FHTransaction cardType](self forKey:{"cardType"), @"cardType"}];
  [v4 encodeInteger:-[FHTransaction transactionType](self forKey:{"transactionType"), @"transactionType"}];
  [v4 encodeInteger:-[FHTransaction transactionInternalState](self forKey:{"transactionInternalState"), @"transactionInternalState"}];
  [v4 encodeInteger:-[FHTransaction accountType](self forKey:{"accountType"), @"accountType"}];
  v16 = [(FHTransaction *)self timeZone];
  [v4 encodeObject:v16 forKey:@"timeZone"];

  v17 = [(FHTransaction *)self altDSID];
  [v4 encodeObject:v17 forKey:@"altDSID"];

  v18 = [(FHTransaction *)self receiptIdentifier];
  [v4 encodeObject:v18 forKey:@"receiptIdentifier"];

  v19 = [(FHTransaction *)self associatedReceiptUniqueID];
  [v4 encodeObject:v19 forKey:@"associatedReceiptUniqueID"];

  v20 = [(FHTransaction *)self merchantUniqueIdentifier];
  [v4 encodeObject:v20 forKey:@"merchantUniqueIdentifier"];

  v21 = [(FHTransaction *)self name];
  [v4 encodeObject:v21 forKey:@"name"];

  v22 = [(FHTransaction *)self rawName];
  [v4 encodeObject:v22 forKey:@"rawName"];

  v23 = [(FHTransaction *)self displayName];
  [v4 encodeObject:v23 forKey:@"displayName"];

  v24 = [(FHTransaction *)self industryCategory];
  [v4 encodeObject:v24 forKey:@"industryCategory"];

  [v4 encodeInteger:-[FHTransaction industryCode](self forKey:{"industryCode"), @"industryCode"}];
  [v4 encodeInteger:-[FHTransaction category](self forKey:{"category"), @"category"}];
  v25 = [(FHTransaction *)self street];
  [v4 encodeObject:v25 forKey:@"street"];

  v26 = [(FHTransaction *)self city];
  [v4 encodeObject:v26 forKey:@"city"];

  v27 = [(FHTransaction *)self state];
  [v4 encodeObject:v27 forKey:@"state"];

  v28 = [(FHTransaction *)self zip];
  [v4 encodeObject:v28 forKey:@"zip"];

  v29 = [(FHTransaction *)self countryCode];
  [v4 encodeObject:v29 forKey:@"countryCode"];

  v30 = [(FHTransaction *)self country];
  [v4 encodeObject:v30 forKey:@"country"];

  v31 = [(FHTransaction *)self merchantDetailedCategory];
  [v4 encodeObject:v31 forKey:@"merchantDetailedCategory"];

  [v4 encodeInt64:-[FHTransaction mapsMerchantID](self forKey:{"mapsMerchantID"), @"mapsMerchantID"}];
  [v4 encodeInt32:-[FHTransaction mapsMerchantResultProviderID](self forKey:{"mapsMerchantResultProviderID"), @"mapsMerchantResultProviderID"}];
  [v4 encodeInt64:-[FHTransaction mapsMerchantBrandID](self forKey:{"mapsMerchantBrandID"), @"mapsMerchantBrandID"}];
  [v4 encodeInt32:-[FHTransaction mapsMerchantBrandResultProviderID](self forKey:{"mapsMerchantBrandResultProviderID"), @"mapsMerchantBrandResultProviderID"}];
  [v4 encodeBool:-[FHTransaction hasLocation](self forKey:{"hasLocation"), @"hasLocation"}];
  v32 = [(FHTransaction *)self location];
  [v4 encodeObject:v32 forKey:@"location"];

  [v4 encodeInteger:-[FHTransaction disputeType](self forKey:{"disputeType"), @"disputeType"}];
  [v4 encodeInteger:-[FHTransaction disputeStatus](self forKey:{"disputeStatus"), @"disputeStatus"}];
  v33 = [(FHTransaction *)self peerPaymentCounterpartHandle];
  [v4 encodeObject:v33 forKey:@"peerPaymentCounterpartHandle"];

  [v4 encodeInteger:-[FHTransaction peerPaymentType](self forKey:{"peerPaymentType"), @"peerPaymentType"}];
  v34 = [(FHTransaction *)self transactionDescription];
  [v4 encodeObject:v34 forKey:@"transactionDescription"];

  v35 = [(FHTransaction *)self processedDescription];
  [v4 encodeObject:v35 forKey:@"processedDescription"];

  [v4 encodeBool:-[FHTransaction recurring](self forKey:{"recurring"), @"recurring"}];
  v36 = [(FHTransaction *)self disputeOpenDate];
  [v4 encodeObject:v36 forKey:@"disputeOpenDate"];

  v37 = [(FHTransaction *)self disputeLastUpdatedDate];
  [v4 encodeObject:v37 forKey:@"disputeLastUpdatedDate"];

  v38 = [(FHTransaction *)self proprietaryBankTransactionCode];
  [v4 encodeObject:v38 forKey:@"proprietaryBankTransactionCode"];

  v39 = [(FHTransaction *)self proprietaryBankTransactionIssuer];
  [v4 encodeObject:v39 forKey:@"proprietaryBankTransactionIssuer"];
}

- (FHTransaction)initWithCoder:(id)a3
{
  v4 = a3;
  v42.receiver = self;
  v42.super_class = FHTransaction;
  v5 = [(FHTransaction *)&v42 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    [(FHTransaction *)v5 setIdentifier:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"serviceIdentifier"];
    [(FHTransaction *)v5 setTransactionServiceIdentifier:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"financeAccountIdentifier"];
    [(FHTransaction *)v5 setFinanceAccountIdentifier:v8];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"financeTransactionIdentifier"];
    [(FHTransaction *)v5 setFinanceTransactionIdentifier:v9];

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"financeTransactionSharedIdentifier"];
    [(FHTransaction *)v5 setFinanceTransactionSharedIdentifier:v10];

    -[FHTransaction setFinanceTransactionSource:](v5, "setFinanceTransactionSource:", [v4 decodeIntegerForKey:@"financeTransactionSource"]);
    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"paymentHash"];
    [(FHTransaction *)v5 setPaymentHash:v11];

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"amount"];
    [(FHTransaction *)v5 setAmount:v12];

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"currencyCode"];
    [(FHTransaction *)v5 setCurrencyCode:v13];

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"transactionDate"];
    [(FHTransaction *)v5 setTransactionDate:v14];

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"transactionStatusChangedDate"];
    [(FHTransaction *)v5 setTransactionStatusChangedDate:v15];

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"transactionSourceIdentifier"];
    [(FHTransaction *)v5 setTransactionSourceIdentifier:v16];

    -[FHTransaction setTransactionStatus:](v5, "setTransactionStatus:", [v4 decodeIntegerForKey:@"transactionStatus"]);
    -[FHTransaction setTransactionSource:](v5, "setTransactionSource:", [v4 decodeIntegerForKey:@"transactionSource"]);
    -[FHTransaction setCardType:](v5, "setCardType:", [v4 decodeIntegerForKey:@"cardType"]);
    -[FHTransaction setTransactionType:](v5, "setTransactionType:", [v4 decodeIntegerForKey:@"transactionType"]);
    -[FHTransaction setAccountType:](v5, "setAccountType:", [v4 decodeIntegerForKey:@"accountType"]);
    -[FHTransaction setTransactionInternalState:](v5, "setTransactionInternalState:", [v4 decodeIntegerForKey:@"transactionInternalState"]);
    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timeZone"];
    [(FHTransaction *)v5 setTimeZone:v17];

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"altDSID"];
    [(FHTransaction *)v5 setAltDSID:v18];

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"receiptIdentifier"];
    [(FHTransaction *)v5 setReceiptIdentifier:v19];

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"associatedReceiptUniqueID"];
    [(FHTransaction *)v5 setAssociatedReceiptUniqueID:v20];

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"merchantUniqueIdentifier"];
    [(FHTransaction *)v5 setMerchantUniqueIdentifier:v21];

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    [(FHTransaction *)v5 setName:v22];

    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rawName"];
    [(FHTransaction *)v5 setRawName:v23];

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
    [(FHTransaction *)v5 setDisplayName:v24];

    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"industryCategory"];
    [(FHTransaction *)v5 setIndustryCategory:v25];

    -[FHTransaction setIndustryCode:](v5, "setIndustryCode:", [v4 decodeIntegerForKey:@"industryCode"]);
    -[FHTransaction setCategory:](v5, "setCategory:", [v4 decodeIntegerForKey:@"category"]);
    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"street"];
    [(FHTransaction *)v5 setStreet:v26];

    v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"city"];
    [(FHTransaction *)v5 setCity:v27];

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"state"];
    [(FHTransaction *)v5 setState:v28];

    v29 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"zip"];
    [(FHTransaction *)v5 setZip:v29];

    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"countryCode"];
    [(FHTransaction *)v5 setCountryCode:v30];

    v31 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"country"];
    [(FHTransaction *)v5 setCountry:v31];

    v32 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"merchantDetailedCategory"];
    [(FHTransaction *)v5 setMerchantDetailedCategory:v32];

    -[FHTransaction setMapsMerchantID:](v5, "setMapsMerchantID:", [v4 decodeInt64ForKey:@"mapsMerchantID"]);
    -[FHTransaction setMapsMerchantResultProviderID:](v5, "setMapsMerchantResultProviderID:", [v4 decodeInt32ForKey:@"mapsMerchantResultProviderID"]);
    -[FHTransaction setMapsMerchantBrandID:](v5, "setMapsMerchantBrandID:", [v4 decodeInt64ForKey:@"mapsMerchantBrandID"]);
    -[FHTransaction setMapsMerchantBrandResultProviderID:](v5, "setMapsMerchantBrandResultProviderID:", [v4 decodeInt32ForKey:@"mapsMerchantBrandResultProviderID"]);
    v33 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"location"];
    [(FHTransaction *)v5 setLocation:v33];

    -[FHTransaction setHasLocation:](v5, "setHasLocation:", [v4 decodeBoolForKey:@"hasLocation"]);
    -[FHTransaction setDisputeType:](v5, "setDisputeType:", [v4 decodeIntegerForKey:@"disputeType"]);
    -[FHTransaction setDisputeStatus:](v5, "setDisputeStatus:", [v4 decodeIntegerForKey:@"disputeStatus"]);
    v34 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"peerPaymentCounterpartHandle"];
    [(FHTransaction *)v5 setPeerPaymentCounterpartHandle:v34];

    -[FHTransaction setPeerPaymentType:](v5, "setPeerPaymentType:", [v4 decodeIntegerForKey:@"peerPaymentType"]);
    v35 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"transactionDescription"];
    [(FHTransaction *)v5 setTransactionDescription:v35];

    v36 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"processedDescription"];
    [(FHTransaction *)v5 setProcessedDescription:v36];

    -[FHTransaction setRecurring:](v5, "setRecurring:", [v4 decodeBoolForKey:@"recurring"]);
    v37 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"disputeOpenDate"];
    [(FHTransaction *)v5 setDisputeOpenDate:v37];

    v38 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"disputeLastUpdatedDate"];
    [(FHTransaction *)v5 setDisputeLastUpdatedDate:v38];

    v39 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"proprietaryBankTransactionCode"];
    [(FHTransaction *)v5 setProprietaryBankTransactionCode:v39];

    v40 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"proprietaryBankTransactionIssuer"];
    [(FHTransaction *)v5 setProprietaryBankTransactionIssuer:v40];
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [(FHTransaction *)self identifier];
  v4 = [v3 hash];

  v5 = [(FHTransaction *)self transactionServiceIdentifier];
  v6 = [v5 hash] - v4 + 32 * v4;

  v7 = [(FHTransaction *)self financeAccountIdentifier];
  v8 = [v7 hash] - v6 + 32 * v6;

  v9 = [(FHTransaction *)self financeTransactionIdentifier];
  v10 = [v9 hash] - v8 + 32 * v8;

  v11 = [(FHTransaction *)self financeTransactionSharedIdentifier];
  v12 = [v11 hash] - v10 + 32 * v10;

  v13 = [(FHTransaction *)self financeTransactionSource]- v12 + 32 * v12;
  v14 = [(FHTransaction *)self paymentHash];
  v15 = [v14 hash] - v13 + 32 * v13;

  v16 = [(FHTransaction *)self transactionSourceIdentifier];
  v17 = [v16 hash] - v15 + 32 * v15;

  v18 = [(FHTransaction *)self amount];
  v19 = [v18 hash] - v17 + 32 * v17;

  v20 = [(FHTransaction *)self currencyCode];
  v21 = [v20 hash] - v19 + 32 * v19;

  v22 = [(FHTransaction *)self transactionDate];
  v23 = [v22 hash] - v21 + 32 * v21;

  v24 = [(FHTransaction *)self transactionStatusChangedDate];
  v25 = [v24 hash] - v23 + 32 * v23;

  v26 = [(FHTransaction *)self industryCategory];
  v27 = [v26 hash] - v25 + 32 * v25;

  v28 = [(FHTransaction *)self displayName];
  v29 = [v28 hash] - v27 + 32 * v27;

  v30 = [(FHTransaction *)self merchantUniqueIdentifier];
  v31 = [v30 hash] - v29 + 32 * v29;

  v32 = [(FHTransaction *)self name];
  v33 = [v32 hash] - v31 + 32 * v31;

  v34 = [(FHTransaction *)self rawName];
  v35 = [v34 hash] - v33 + 32 * v33;

  v36 = [(FHTransaction *)self industryCode]- v35 + 32 * v35;
  v37 = [(FHTransaction *)self category]- v36 + 32 * v36;
  v38 = [(FHTransaction *)self street];
  v39 = [v38 hash] - v37 + 32 * v37;

  v40 = [(FHTransaction *)self city];
  v41 = [v40 hash] - v39 + 32 * v39;

  v42 = [(FHTransaction *)self state];
  v43 = [v42 hash] - v41 + 32 * v41;

  v44 = [(FHTransaction *)self zip];
  v45 = [v44 hash] - v43 + 32 * v43;

  v46 = [(FHTransaction *)self countryCode];
  v47 = [v46 hash] - v45 + 32 * v45;

  v48 = [(FHTransaction *)self altDSID];
  v49 = [v48 hash] - v47 + 32 * v47;

  v50 = [(FHTransaction *)self receiptIdentifier];
  v51 = [v50 hash] - v49 + 32 * v49;

  v52 = [(FHTransaction *)self associatedReceiptUniqueID];
  v53 = [v52 hash] - v51 + 32 * v51;

  v54 = [(FHTransaction *)self country];
  v55 = [v54 hash] - v53 + 32 * v53;

  v56 = [(FHTransaction *)self merchantDetailedCategory];
  v57 = [v56 hash] - v55 + 32 * v55;

  v58 = [(FHTransaction *)self transactionStatus]- v57 + 32 * v57;
  v59 = [(FHTransaction *)self transactionSource]- v58 + 32 * v58;
  v60 = [(FHTransaction *)self cardType]- v59 + 32 * v59;
  v61 = [(FHTransaction *)self transactionType]- v60 + 32 * v60;
  v62 = [(FHTransaction *)self accountType]- v61 + 32 * v61;
  v63 = [(FHTransaction *)self transactionInternalState]- v62 + 32 * v62;
  v64 = [(FHTransaction *)self timeZone];
  v65 = [v64 hash] - v63 + 32 * v63;

  v66 = [(FHTransaction *)self location];
  v67 = [v66 hash] - v65 + 32 * v65;

  v68 = 31 * ([(FHTransaction *)self mapsMerchantID]- v67 + 32 * v67);
  v69 = 31 * (v68 + [(FHTransaction *)self mapsMerchantResultProviderID]);
  v70 = v69 + [(FHTransaction *)self hasLocation];
  v71 = [(FHTransaction *)self disputeType]- v70 + 32 * v70;
  v72 = [(FHTransaction *)self disputeStatus]- v71 + 32 * v71;
  v73 = [(FHTransaction *)self peerPaymentCounterpartHandle];
  v74 = [v73 hash] - v72 + 32 * v72;

  v75 = [(FHTransaction *)self peerPaymentType]- v74 + 32 * v74;
  v76 = [(FHTransaction *)self transactionDescription];
  v77 = [v76 hash] - v75 + 32 * v75;

  v78 = [(FHTransaction *)self processedDescription];
  v79 = 31 * ([v78 hash] - v77 + 32 * v77);

  v80 = v79 + [(FHTransaction *)self recurring];
  v81 = [(FHTransaction *)self disputeOpenDate];
  v82 = [v81 hash] - v80 + 32 * v80;

  v83 = [(FHTransaction *)self disputeLastUpdatedDate];
  v84 = [v83 hash] - v82 + 32 * v82;

  v85 = [(FHTransaction *)self proprietaryBankTransactionCode];
  v86 = [v85 hash] - v84 + 32 * v84;

  v87 = [(FHTransaction *)self proprietaryBankTransactionIssuer];
  v88 = [v87 hash] - v86 + 32 * v86;

  return v88 + 0x3D05DF62DD89A5FLL;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  v7 = v6;
  if (v6 == self)
  {
    LOBYTE(v18) = 1;
    goto LABEL_305;
  }

  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    LOBYTE(v18) = 0;
    goto LABEL_305;
  }

  v357 = [(FHTransaction *)self identifier];
  if (v357 && ([(FHTransaction *)v7 identifier], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v354 = v8;
    v9 = [(FHTransaction *)self identifier];
    [(FHTransaction *)v7 identifier];
    v347 = v348 = v9;
    v10 = [v9 isEqualToString:?];
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
    if ((v10 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v19 = [(FHTransaction *)self identifier];
    v10 = [(FHTransaction *)v7 identifier];
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
    v353 = v19;
    v352 = v10;
    v20 = v19 == v10;
    v15 = 0;
    if (!v20)
    {
      goto LABEL_24;
    }
  }

  v21 = [(FHTransaction *)self transactionServiceIdentifier];
  v22 = v21 != 0;
  v350 = v21;
  if (v21 && ([(FHTransaction *)v7 transactionServiceIdentifier], (v23 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v349 = v23;
    v24 = [(FHTransaction *)self transactionServiceIdentifier];
    [(FHTransaction *)v7 transactionServiceIdentifier];
    v341 = v342 = v24;
    v10 = [v24 isEqualToString:?];
    v12 = 0;
    v11 = 1;
    if ((v10 & 1) == 0)
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
    v3 = [(FHTransaction *)self transactionServiceIdentifier];
    v10 = [(FHTransaction *)v7 transactionServiceIdentifier];
    v11 = 0;
    v349 = 0;
    v12 = 1;
    v346 = v3;
    v345 = v10;
    if (v3 != v10)
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

  v25 = [(FHTransaction *)self financeAccountIdentifier];
  v3 = v25 != 0;
  v344 = v25;
  v428 = v22;
  if (v25 && ([(FHTransaction *)v7 financeAccountIdentifier], (v26 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v343 = v26;
    v4 = [(FHTransaction *)self financeAccountIdentifier];
    [(FHTransaction *)v7 financeAccountIdentifier];
    v335 = v336 = v4;
    v10 = [v4 isEqualToString:?];
    v18 = 0;
    v13 = 1;
    if ((v10 & 1) == 0)
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
    v4 = [(FHTransaction *)self financeAccountIdentifier];
    v10 = [(FHTransaction *)v7 financeAccountIdentifier];
    v13 = 0;
    v343 = 0;
    v18 = 1;
    v340 = v4;
    v339 = v10;
    if (v4 != v10)
    {
      LODWORD(v427) = 1;
      HIDWORD(v427) = v3;
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

  v29 = [(FHTransaction *)self financeTransactionIdentifier];
  v454 = v29 != 0;
  v338 = v29;
  v427 = __PAIR64__(v3, v18);
  if (v29 && ([(FHTransaction *)v7 financeTransactionIdentifier], (v30 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v337 = v30;
    [(FHTransaction *)self financeTransactionIdentifier];
    v13 = v4 = v13;
    v31 = [(FHTransaction *)v7 financeTransactionIdentifier];
    v330 = v13;
    v32 = v13;
    LODWORD(v13) = v4;
    v329 = v31;
    v10 = [v32 isEqualToString:?];
    v453 = 0;
    v33 = 1;
    if ((v10 & 1) == 0)
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
    v4 = [(FHTransaction *)self financeTransactionIdentifier];
    v10 = [(FHTransaction *)v7 financeTransactionIdentifier];
    v33 = 0;
    v337 = 0;
    v453 = 1;
    v334 = v4;
    v333 = v10;
    if (v4 != v10)
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
  v34 = [(FHTransaction *)self financeTransactionSharedIdentifier];
  LODWORD(v452) = v34 != 0;
  v332 = v34;
  if (v34 && ([(FHTransaction *)v7 financeTransactionSharedIdentifier], (v35 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v331 = v35;
    v36 = [(FHTransaction *)self financeTransactionSharedIdentifier];
    [(FHTransaction *)v7 financeTransactionSharedIdentifier];
    v325 = v326 = v36;
    v10 = [v36 isEqualToString:?];
    HIDWORD(v452) = 0;
    v37 = 1;
    if ((v10 & 1) == 0)
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
    v38 = [(FHTransaction *)self financeTransactionSharedIdentifier];
    v10 = [(FHTransaction *)v7 financeTransactionSharedIdentifier];
    v37 = 0;
    v331 = 0;
    HIDWORD(v452) = 1;
    v328 = v38;
    v327 = v10;
    if (v38 != v10)
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
  v39 = [(FHTransaction *)self financeTransactionSource];
  v10 = [(FHTransaction *)v7 financeTransactionSource];
  if (v39 != v10)
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

  v40 = [(FHTransaction *)self paymentHash];
  v451 = v40 != 0;
  v324 = v40;
  if (v40 && ([(FHTransaction *)v7 paymentHash], (v41 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v323 = v41;
    v42 = [(FHTransaction *)self paymentHash];
    [(FHTransaction *)v7 paymentHash];
    v317 = v318 = v42;
    v10 = [v42 isEqualToString:?];
    v17 = 0;
    v43 = 1;
    if ((v10 & 1) == 0)
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
    v44 = [(FHTransaction *)self paymentHash];
    v10 = [(FHTransaction *)v7 paymentHash];
    v43 = 0;
    v323 = 0;
    v17 = 1;
    v322 = v44;
    v321 = v10;
    if (v44 != v10)
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
  v45 = [(FHTransaction *)self transactionSourceIdentifier];
  v46 = v45 != 0;
  v320 = v45;
  if (v45 && ([(FHTransaction *)v7 transactionSourceIdentifier], (v47 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v319 = v47;
    v4 = [(FHTransaction *)self transactionSourceIdentifier];
    [(FHTransaction *)v7 transactionSourceIdentifier];
    v312 = v313 = v4;
    v10 = [v4 isEqualToString:?];
    v17 = 0;
    v48 = 1;
    if ((v10 & 1) == 0)
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
    v4 = [(FHTransaction *)self transactionSourceIdentifier];
    v10 = [(FHTransaction *)v7 transactionSourceIdentifier];
    v48 = 0;
    v319 = 0;
    v17 = 1;
    v316 = v4;
    v315 = v10;
    if (v4 != v10)
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
  v49 = [(FHTransaction *)self amount];
  v4 = v49 != 0;
  v314 = v49;
  v425 = v46;
  if (v49 && ([(FHTransaction *)v7 amount], (v351 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v50 = [(FHTransaction *)self amount];
    [(FHTransaction *)v7 amount];
    v306 = v307 = v50;
    v10 = [v50 isEqual:?];
    v450 = 0;
    v18 = 1;
    if ((v10 & 1) == 0)
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
    v51 = [(FHTransaction *)self amount];
    v10 = [(FHTransaction *)v7 amount];
    v18 = 0;
    v351 = 0;
    v450 = 1;
    v311 = v51;
    v310 = v10;
    if (v51 != v10)
    {
      HIDWORD(v423) = v4;
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

  v423 = __PAIR64__(v4, v18);
  v52 = [(FHTransaction *)self currencyCode];
  LODWORD(v449) = v52 != 0;
  v308 = v52;
  if (v52 && ([(FHTransaction *)v7 currencyCode], (v309 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v53 = [(FHTransaction *)self currencyCode];
    [(FHTransaction *)v7 currencyCode];
    v300 = v301 = v53;
    v10 = [v53 isEqualToString:?];
    v448 = 0;
    HIDWORD(v449) = 1;
    if ((v10 & 1) == 0)
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
    v54 = [(FHTransaction *)self currencyCode];
    v10 = [(FHTransaction *)v7 currencyCode];
    HIDWORD(v449) = 0;
    v309 = 0;
    v448 = 1;
    v305 = v54;
    v304 = v10;
    if (v54 != v10)
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

  v55 = [(FHTransaction *)self transactionDate];
  LODWORD(v447) = v55 != 0;
  v302 = v55;
  if (v55 && ([(FHTransaction *)v7 transactionDate], (v303 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v56 = [(FHTransaction *)self transactionDate];
    [(FHTransaction *)v7 transactionDate];
    v294 = v295 = v56;
    v10 = [v56 isEqual:?];
    v446 = 0;
    HIDWORD(v447) = 1;
    if ((v10 & 1) == 0)
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
    v57 = [(FHTransaction *)self transactionDate];
    v10 = [(FHTransaction *)v7 transactionDate];
    HIDWORD(v447) = 0;
    v303 = 0;
    v446 = 1;
    v299 = v57;
    v298 = v10;
    if (v57 != v10)
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

  v58 = [(FHTransaction *)self transactionStatusChangedDate];
  LODWORD(v445) = v58 != 0;
  v296 = v58;
  if (v58 && ([(FHTransaction *)v7 transactionStatusChangedDate], (v297 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v59 = [(FHTransaction *)self transactionStatusChangedDate];
    [(FHTransaction *)v7 transactionStatusChangedDate];
    v288 = v289 = v59;
    v10 = [v59 isEqual:?];
    v444 = 0;
    HIDWORD(v445) = 1;
    if ((v10 & 1) == 0)
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
    v60 = [(FHTransaction *)self transactionStatusChangedDate];
    v10 = [(FHTransaction *)v7 transactionStatusChangedDate];
    HIDWORD(v445) = 0;
    v297 = 0;
    v444 = 1;
    v293 = v60;
    v292 = v10;
    if (v60 != v10)
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

  v61 = [(FHTransaction *)self industryCategory];
  LODWORD(v443) = v61 != 0;
  v290 = v61;
  if (v61 && ([(FHTransaction *)v7 industryCategory], (v291 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v62 = [(FHTransaction *)self industryCategory];
    [(FHTransaction *)v7 industryCategory];
    v282 = v283 = v62;
    v10 = [v62 isEqualToString:?];
    v442 = 0;
    HIDWORD(v443) = 1;
    if ((v10 & 1) == 0)
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
    v63 = [(FHTransaction *)self industryCategory];
    v10 = [(FHTransaction *)v7 industryCategory];
    HIDWORD(v443) = 0;
    v291 = 0;
    v442 = 1;
    v287 = v63;
    v286 = v10;
    if (v63 != v10)
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

  v64 = [(FHTransaction *)self displayName];
  LODWORD(v441) = v64 != 0;
  v284 = v64;
  if (v64 && ([(FHTransaction *)v7 displayName], (v285 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v65 = [(FHTransaction *)self displayName];
    [(FHTransaction *)v7 displayName];
    v276 = v277 = v65;
    v10 = [v65 isEqual:?];
    v440 = 0;
    HIDWORD(v441) = 1;
    if ((v10 & 1) == 0)
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
    v66 = [(FHTransaction *)self displayName];
    v10 = [(FHTransaction *)v7 displayName];
    HIDWORD(v441) = 0;
    v285 = 0;
    v440 = 1;
    v281 = v66;
    v280 = v10;
    if (v66 != v10)
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

  v67 = [(FHTransaction *)self street];
  LODWORD(v439) = v67 != 0;
  v278 = v67;
  if (v67 && ([(FHTransaction *)v7 street], (v279 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v68 = [(FHTransaction *)self street];
    [(FHTransaction *)v7 street];
    v270 = v271 = v68;
    v10 = [v68 isEqualToString:?];
    v438 = 0;
    HIDWORD(v439) = 1;
    if ((v10 & 1) == 0)
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
    v69 = [(FHTransaction *)self street];
    v10 = [(FHTransaction *)v7 street];
    HIDWORD(v439) = 0;
    v279 = 0;
    v438 = 1;
    v275 = v69;
    v274 = v10;
    if (v69 != v10)
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

  v70 = [(FHTransaction *)self city];
  LODWORD(v437) = v70 != 0;
  v272 = v70;
  if (v70 && ([(FHTransaction *)v7 city], (v273 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v71 = [(FHTransaction *)self city];
    [(FHTransaction *)v7 city];
    v264 = v265 = v71;
    v10 = [v71 isEqualToString:?];
    v436 = 0;
    HIDWORD(v437) = 1;
    if ((v10 & 1) == 0)
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
    v72 = [(FHTransaction *)self city];
    v10 = [(FHTransaction *)v7 city];
    HIDWORD(v437) = 0;
    v273 = 0;
    v436 = 1;
    v269 = v72;
    v268 = v10;
    if (v72 != v10)
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

  v73 = [(FHTransaction *)self state];
  LODWORD(v435) = v73 != 0;
  v266 = v73;
  if (v73 && ([(FHTransaction *)v7 state], (v267 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v74 = [(FHTransaction *)self state];
    [(FHTransaction *)v7 state];
    v258 = v259 = v74;
    v10 = [v74 isEqualToString:?];
    v434 = 0;
    HIDWORD(v435) = 1;
    if ((v10 & 1) == 0)
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
    v75 = [(FHTransaction *)self state];
    v10 = [(FHTransaction *)v7 state];
    HIDWORD(v435) = 0;
    v267 = 0;
    v434 = 1;
    v263 = v75;
    v262 = v10;
    if (v75 != v10)
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
    v10 = [v77 isEqualToString:?];
    v431 = 0x100000000;
    if ((v10 & 1) == 0)
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
    v10 = [(FHTransaction *)v7 zip];
    v261 = 0;
    v431 = 1;
    v257 = v78;
    v256 = v10;
    if (v78 != v10)
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

  v79 = [(FHTransaction *)self countryCode];
  HIDWORD(v430) = v79 != 0;
  v252 = v79;
  if (v79 && ([(FHTransaction *)v7 countryCode], (v255 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v80 = [(FHTransaction *)self countryCode];
    [(FHTransaction *)v7 countryCode];
    v246 = v247 = v80;
    v10 = [v80 isEqualToString:?];
    LODWORD(v430) = 0;
    v432 = 1;
    if ((v10 & 1) == 0)
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
    v81 = [(FHTransaction *)self countryCode];
    v10 = [(FHTransaction *)v7 countryCode];
    v432 = 0;
    v255 = 0;
    LODWORD(v430) = 1;
    v251 = v81;
    v250 = v10;
    if (v81 != v10)
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

  v82 = [(FHTransaction *)self altDSID];
  v429 = v82 != 0;
  v249 = v82;
  if (v82 && ([(FHTransaction *)v7 altDSID], (v248 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v83 = [(FHTransaction *)self altDSID];
    [(FHTransaction *)v7 altDSID];
    v242 = v243 = v83;
    v10 = [v83 isEqualToString:?];
    v416 = 0;
    v417 = 1;
    if ((v10 & 1) == 0)
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
    v84 = [(FHTransaction *)self altDSID];
    v10 = [(FHTransaction *)v7 altDSID];
    v417 = 0;
    v248 = 0;
    v416 = 1;
    v245 = v84;
    v244 = v10;
    if (v84 != v10)
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

  v85 = [(FHTransaction *)self receiptIdentifier];
  LODWORD(v414) = v85 != 0;
  v241 = v85;
  if (v85 && ([(FHTransaction *)v7 receiptIdentifier], (v240 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v86 = [(FHTransaction *)self receiptIdentifier];
    [(FHTransaction *)v7 receiptIdentifier];
    v235 = v236 = v86;
    v10 = [v86 isEqualToString:?];
    v413 = 0;
    HIDWORD(v414) = 1;
    if ((v10 & 1) == 0)
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
    v87 = [(FHTransaction *)self receiptIdentifier];
    v10 = [(FHTransaction *)v7 receiptIdentifier];
    HIDWORD(v414) = 0;
    v240 = 0;
    v413 = 1;
    v239 = v87;
    v238 = v10;
    if (v87 != v10)
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

  v88 = [(FHTransaction *)self associatedReceiptUniqueID];
  LODWORD(v411) = v88 != 0;
  v234 = v88;
  if (v88 && ([(FHTransaction *)v7 associatedReceiptUniqueID], (v237 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v89 = [(FHTransaction *)self associatedReceiptUniqueID];
    [(FHTransaction *)v7 associatedReceiptUniqueID];
    v232 = v233 = v89;
    v10 = [v89 isEqualToString:?];
    v410 = 0;
    HIDWORD(v411) = 1;
    if ((v10 & 1) == 0)
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
    v90 = [(FHTransaction *)self associatedReceiptUniqueID];
    v10 = [(FHTransaction *)v7 associatedReceiptUniqueID];
    HIDWORD(v411) = 0;
    v237 = 0;
    v410 = 1;
    v231 = v90;
    v230 = v10;
    if (v90 != v10)
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

  v91 = [(FHTransaction *)self country];
  LODWORD(v408) = v91 != 0;
  v229 = v91;
  if (v91 && ([(FHTransaction *)v7 country], (v228 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v92 = [(FHTransaction *)self country];
    [(FHTransaction *)v7 country];
    v226 = v227 = v92;
    v10 = [v92 isEqualToString:?];
    v407 = 0;
    HIDWORD(v408) = 1;
    if ((v10 & 1) == 0)
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
    v93 = [(FHTransaction *)self country];
    v10 = [(FHTransaction *)v7 country];
    HIDWORD(v408) = 0;
    v228 = 0;
    v407 = 1;
    v225 = v93;
    v224 = v10;
    if (v93 != v10)
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

  v94 = [(FHTransaction *)self merchantUniqueIdentifier];
  LODWORD(v405) = v94 != 0;
  v223 = v94;
  if (v94 && ([(FHTransaction *)v7 merchantUniqueIdentifier], (v222 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v95 = [(FHTransaction *)self merchantUniqueIdentifier];
    [(FHTransaction *)v7 merchantUniqueIdentifier];
    v220 = v221 = v95;
    v10 = [v95 isEqualToString:?];
    v404 = 0;
    HIDWORD(v405) = 1;
    if ((v10 & 1) == 0)
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
    v96 = [(FHTransaction *)self merchantUniqueIdentifier];
    v10 = [(FHTransaction *)v7 merchantUniqueIdentifier];
    HIDWORD(v405) = 0;
    v222 = 0;
    v404 = 1;
    v219 = v96;
    v218 = v10;
    if (v96 != v10)
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

  v97 = [(FHTransaction *)self name];
  LODWORD(v402) = v97 != 0;
  v217 = v97;
  if (v97 && ([(FHTransaction *)v7 name], (v216 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v98 = [(FHTransaction *)self name];
    [(FHTransaction *)v7 name];
    v214 = v215 = v98;
    v10 = [v98 isEqualToString:?];
    v400 = 0;
    HIDWORD(v402) = 1;
    if ((v10 & 1) == 0)
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
    v99 = [(FHTransaction *)self name];
    v10 = [(FHTransaction *)v7 name];
    HIDWORD(v402) = 0;
    v216 = 0;
    v400 = 1;
    v212 = v10;
    v213 = v99;
    if (v99 != v10)
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

  v100 = [(FHTransaction *)self rawName];
  HIDWORD(v397) = v100 != 0;
  v211 = v100;
  if (v100 && ([(FHTransaction *)v7 rawName], (v210 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v101 = [(FHTransaction *)self rawName];
    v208 = [(FHTransaction *)v7 rawName];
    v209 = v101;
    v10 = [v101 isEqualToString:?];
    LODWORD(v397) = 0;
    v398 = 1;
    if ((v10 & 1) == 0)
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
    v102 = [(FHTransaction *)self rawName];
    v10 = [(FHTransaction *)v7 rawName];
    v398 = 0;
    v210 = 0;
    LODWORD(v397) = 1;
    v206 = v10;
    v207 = v102;
    if (v102 != v10)
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

  v103 = [(FHTransaction *)self timeZone];
  HIDWORD(v394) = v103 != 0;
  v205 = v103;
  if (v103 && ([(FHTransaction *)v7 timeZone], (v204 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v104 = [(FHTransaction *)self timeZone];
    v202 = [(FHTransaction *)v7 timeZone];
    v203 = v104;
    v10 = [v104 isEqual:?];
    LODWORD(v394) = 0;
    v395 = 1;
    if ((v10 & 1) == 0)
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
    v105 = [(FHTransaction *)self timeZone];
    v10 = [(FHTransaction *)v7 timeZone];
    v395 = 0;
    v204 = 0;
    LODWORD(v394) = 1;
    v200 = v10;
    v201 = v105;
    if (v105 != v10)
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

  v106 = [(FHTransaction *)self merchantDetailedCategory];
  HIDWORD(v391) = v106 != 0;
  v199 = v106;
  if (v106 && ([(FHTransaction *)v7 merchantDetailedCategory], (v198 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v107 = [(FHTransaction *)self merchantDetailedCategory];
    v196 = [(FHTransaction *)v7 merchantDetailedCategory];
    v197 = v107;
    v10 = [v107 isEqualToString:?];
    LODWORD(v391) = 0;
    v392 = 1;
    if ((v10 & 1) == 0)
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
    v108 = [(FHTransaction *)self merchantDetailedCategory];
    v10 = [(FHTransaction *)v7 merchantDetailedCategory];
    v392 = 0;
    v198 = 0;
    LODWORD(v391) = 1;
    v194 = v10;
    v195 = v108;
    if (v108 != v10)
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

  v109 = [(FHTransaction *)self location];
  v388 = v109 != 0;
  v193 = v109;
  if (v109 && ([(FHTransaction *)v7 location], (v192 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v110 = [(FHTransaction *)self location];
    v190 = [(FHTransaction *)v7 location];
    v191 = v110;
    v10 = [v110 isEqual:?];
    v386 = 0;
    v389 = 1;
    if ((v10 & 1) == 0)
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
    v111 = [(FHTransaction *)self location];
    v10 = [(FHTransaction *)v7 location];
    v389 = 0;
    v192 = 0;
    v386 = 1;
    v188 = v10;
    v189 = v111;
    if (v111 != v10)
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

  v112 = [(FHTransaction *)self industryCode];
  v10 = [(FHTransaction *)v7 industryCode];
  if (v112 != v10)
  {
    goto LABEL_503;
  }

  v113 = [(FHTransaction *)self category];
  v10 = [(FHTransaction *)v7 category];
  if (v113 != v10)
  {
    goto LABEL_503;
  }

  v114 = [(FHTransaction *)self transactionStatus];
  v10 = [(FHTransaction *)v7 transactionStatus];
  if (v114 != v10)
  {
    goto LABEL_503;
  }

  v115 = [(FHTransaction *)self transactionSource];
  v10 = [(FHTransaction *)v7 transactionSource];
  if (v115 != v10)
  {
    goto LABEL_503;
  }

  v116 = [(FHTransaction *)self cardType];
  v10 = [(FHTransaction *)v7 cardType];
  if (v116 != v10)
  {
    goto LABEL_503;
  }

  v117 = [(FHTransaction *)self transactionType];
  v10 = [(FHTransaction *)v7 transactionType];
  if (v117 != v10)
  {
    goto LABEL_503;
  }

  v118 = [(FHTransaction *)self accountType];
  v10 = [(FHTransaction *)v7 accountType];
  if (v118 != v10)
  {
    goto LABEL_503;
  }

  v119 = [(FHTransaction *)self transactionInternalState];
  v10 = [(FHTransaction *)v7 transactionInternalState];
  if (v119 != v10)
  {
    goto LABEL_503;
  }

  v120 = [(FHTransaction *)self hasLocation];
  v10 = [(FHTransaction *)v7 hasLocation];
  if (v120 != v10)
  {
    goto LABEL_503;
  }

  v121 = [(FHTransaction *)self mapsMerchantID];
  v10 = [(FHTransaction *)v7 mapsMerchantID];
  if (v121 != v10)
  {
    goto LABEL_503;
  }

  v122 = [(FHTransaction *)self mapsMerchantResultProviderID];
  v10 = [(FHTransaction *)v7 mapsMerchantResultProviderID];
  if (v122 != v10)
  {
    goto LABEL_503;
  }

  v123 = [(FHTransaction *)self mapsMerchantBrandID];
  v10 = [(FHTransaction *)v7 mapsMerchantBrandID];
  if (v123 != v10 || (v124 = [(FHTransaction *)self mapsMerchantBrandResultProviderID], v10 = [(FHTransaction *)v7 mapsMerchantBrandResultProviderID], v124 != v10) || (v125 = [(FHTransaction *)self disputeType], v10 = [(FHTransaction *)v7 disputeType], v125 != v10) || (v126 = [(FHTransaction *)self disputeStatus], v10 = [(FHTransaction *)v7 disputeStatus], v126 != v10))
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

  v127 = [(FHTransaction *)self peerPaymentCounterpartHandle];
  LODWORD(v384) = v127 != 0;
  v186 = v127;
  if (v127 && ([(FHTransaction *)v7 peerPaymentCounterpartHandle], (v187 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v128 = [(FHTransaction *)self peerPaymentCounterpartHandle];
    v184 = [(FHTransaction *)v7 peerPaymentCounterpartHandle];
    v185 = v128;
    v10 = [v128 isEqualToString:?];
    v383 = 0;
    HIDWORD(v384) = 1;
    if ((v10 & 1) == 0)
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
    v129 = [(FHTransaction *)self peerPaymentCounterpartHandle];
    v10 = [(FHTransaction *)v7 peerPaymentCounterpartHandle];
    HIDWORD(v384) = 0;
    v187 = 0;
    v383 = 1;
    v182 = v10;
    v183 = v129;
    if (v129 != v10)
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

  v130 = [(FHTransaction *)self peerPaymentType];
  v10 = [(FHTransaction *)v7 peerPaymentType];
  if (v130 != v10)
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

  v131 = [(FHTransaction *)self transactionDescription];
  HIDWORD(v379) = v131 != 0;
  v180 = v131;
  if (v131 && ([(FHTransaction *)v7 transactionDescription], (v181 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v132 = [(FHTransaction *)self transactionDescription];
    v178 = [(FHTransaction *)v7 transactionDescription];
    v179 = v132;
    v10 = [v132 isEqualToString:?];
    LODWORD(v379) = 0;
    v380 = 1;
    if ((v10 & 1) == 0)
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
    v133 = [(FHTransaction *)self transactionDescription];
    v10 = [(FHTransaction *)v7 transactionDescription];
    v380 = 0;
    v181 = 0;
    LODWORD(v379) = 1;
    v176 = v10;
    v177 = v133;
    if (v133 != v10)
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

  v134 = [(FHTransaction *)self processedDescription];
  HIDWORD(v376) = v134 != 0;
  v174 = v134;
  if (v134 && ([(FHTransaction *)v7 processedDescription], (v175 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v135 = [(FHTransaction *)self processedDescription];
    v172 = [(FHTransaction *)v7 processedDescription];
    v173 = v135;
    v10 = [v135 isEqualToString:?];
    LODWORD(v376) = 0;
    v377 = 1;
    if ((v10 & 1) == 0)
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
    v136 = [(FHTransaction *)self processedDescription];
    v10 = [(FHTransaction *)v7 processedDescription];
    v377 = 0;
    v175 = 0;
    LODWORD(v376) = 1;
    v170 = v10;
    v171 = v136;
    if (v136 != v10)
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

  v137 = [(FHTransaction *)self recurring];
  v10 = [(FHTransaction *)v7 recurring];
  if (v137 != v10)
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

  v138 = [(FHTransaction *)self disputeOpenDate];
  LODWORD(v374) = v138 != 0;
  v168 = v138;
  if (v138 && ([(FHTransaction *)v7 disputeOpenDate], (v169 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v139 = [(FHTransaction *)self disputeOpenDate];
    v166 = [(FHTransaction *)v7 disputeOpenDate];
    v167 = v139;
    v10 = [v139 isEqual:?];
    HIDWORD(v373) = 0;
    HIDWORD(v374) = 1;
    if ((v10 & 1) == 0)
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
    v140 = [(FHTransaction *)self disputeOpenDate];
    v10 = [(FHTransaction *)v7 disputeOpenDate];
    HIDWORD(v374) = 0;
    v169 = 0;
    HIDWORD(v373) = 1;
    v164 = v10;
    v165 = v140;
    if (v140 != v10)
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

  v141 = [(FHTransaction *)self disputeLastUpdatedDate];
  LODWORD(v370) = v141 != 0;
  v162 = v141;
  if (v141 && ([(FHTransaction *)v7 disputeLastUpdatedDate], (v163 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v142 = [(FHTransaction *)self disputeLastUpdatedDate];
    v160 = [(FHTransaction *)v7 disputeLastUpdatedDate];
    v161 = v142;
    v10 = [v142 isEqual:?];
    v368 = 0;
    HIDWORD(v370) = 1;
    if ((v10 & 1) == 0)
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
    v143 = [(FHTransaction *)self disputeLastUpdatedDate];
    v10 = [(FHTransaction *)v7 disputeLastUpdatedDate];
    HIDWORD(v370) = 0;
    v163 = 0;
    v368 = 1;
    v158 = v10;
    v159 = v143;
    if (v143 != v10)
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

  v144 = [(FHTransaction *)self proprietaryBankTransactionCode];
  HIDWORD(v364) = v144 != 0;
  v156 = v144;
  if (v144 && ([(FHTransaction *)v7 proprietaryBankTransactionCode], (v157 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v145 = [(FHTransaction *)self proprietaryBankTransactionCode];
    v154 = [(FHTransaction *)v7 proprietaryBankTransactionCode];
    v155 = v145;
    v10 = [v145 isEqualToString:?];
    LODWORD(v364) = 0;
    v365 = 1;
    if ((v10 & 1) == 0)
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
    v146 = [(FHTransaction *)self proprietaryBankTransactionCode];
    v10 = [(FHTransaction *)v7 proprietaryBankTransactionCode];
    v365 = 0;
    v157 = 0;
    LODWORD(v364) = 1;
    v152 = v10;
    v153 = v146;
    if (v146 != v10)
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

  v147 = [(FHTransaction *)self proprietaryBankTransactionIssuer];
  v15 = v147 != 0;
  v150 = v147;
  if (v147 && ([(FHTransaction *)v7 proprietaryBankTransactionIssuer], (v151 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v148 = [(FHTransaction *)self proprietaryBankTransactionIssuer];
    v4 = [(FHTransaction *)v7 proprietaryBankTransactionIssuer];
    v149 = v148;
    v10 = [v148 isEqualToString:v4];
    LOBYTE(v18) = v10;
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
    v3 = [(FHTransaction *)self proprietaryBankTransactionIssuer];
    v10 = [(FHTransaction *)v7 proprietaryBankTransactionIssuer];
    v151 = 0;
    v16 = 0;
    LOBYTE(v18) = v3 == v10;
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

  if (v357)
  {
  }

LABEL_305:
  return v18;
}

- (BOOL)bankConnectTransactionHasBeenUpdatedFrom:(id)a3
{
  v183 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v14 = 0;
    goto LABEL_118;
  }

  if (!v4 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v14 = 1;
    goto LABEL_118;
  }

  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7 = [(FHTransaction *)self identifier];
  if (!v7 || ([(FHTransaction *)v5 identifier], (v8 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v15 = [(FHTransaction *)self identifier];
    v16 = [(FHTransaction *)v5 identifier];

    if (v7)
    {
    }

    if (v15 == v16)
    {
      goto LABEL_7;
    }

LABEL_13:
    v17 = MEMORY[0x277CCACA8];
    v18 = [(FHTransaction *)v5 identifier];
    v19 = [(FHTransaction *)self identifier];
    v20 = [v17 stringWithFormat:@"Identifier %@ -> %@", v18, v19];
    [v6 addObject:v20];

    v13 = 0;
    goto LABEL_14;
  }

  v9 = v8;
  v10 = [(FHTransaction *)self identifier];
  v11 = [(FHTransaction *)v5 identifier];
  v12 = [v10 isEqualToString:v11];

  if ((v12 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  v13 = 1;
LABEL_14:
  v21 = [(FHTransaction *)self financeTransactionSharedIdentifier];
  if (v21 && ([(FHTransaction *)v5 financeTransactionSharedIdentifier], (v22 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v23 = v22;
    v24 = [(FHTransaction *)self financeTransactionSharedIdentifier];
    v25 = [(FHTransaction *)v5 financeTransactionSharedIdentifier];
    v26 = [v24 isEqualToString:v25];

    if (v26)
    {
LABEL_17:
      v172 = 1;
      goto LABEL_22;
    }
  }

  else
  {
    v27 = [(FHTransaction *)self financeTransactionSharedIdentifier];
    v28 = [(FHTransaction *)v5 financeTransactionSharedIdentifier];

    if (v21)
    {
    }

    if (v27 == v28)
    {
      goto LABEL_17;
    }
  }

  v29 = MEMORY[0x277CCACA8];
  v30 = [(FHTransaction *)v5 financeTransactionSharedIdentifier];
  v31 = [(FHTransaction *)self financeTransactionSharedIdentifier];
  v32 = [v29 stringWithFormat:@"Finance Shared Identifier %@ -> %@", v30, v31];
  [v6 addObject:v32];

  v172 = 0;
LABEL_22:
  v33 = [(FHTransaction *)self financeTransactionSource];
  v175 = [(FHTransaction *)v5 financeTransactionSource];
  v176 = v33;
  if (v33 != v175)
  {
    v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"Finance Transaction Source %lu -> %lu", -[FHTransaction financeTransactionSource](v5, "financeTransactionSource"), -[FHTransaction financeTransactionSource](self, "financeTransactionSource")];
    [v6 addObject:v34];
  }

  v35 = [(FHTransaction *)self amount];
  if (!v35 || ([(FHTransaction *)v5 amount], (v36 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v41 = [(FHTransaction *)self amount];
    v42 = [(FHTransaction *)v5 amount];

    if (v35)
    {
    }

    if (v41 == v42)
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
  v38 = [(FHTransaction *)self amount];
  v39 = [(FHTransaction *)v5 amount];
  v40 = [v38 isEqual:v39];

  if ((v40 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_27:
  v168 = 1;
LABEL_32:
  v44 = [(FHTransaction *)self currencyCode];
  if (!v44 || ([(FHTransaction *)v5 currencyCode], (v45 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v51 = [(FHTransaction *)self currencyCode];
    v52 = [(FHTransaction *)v5 currencyCode];

    if (v44)
    {
    }

    if (v51 == v52)
    {
      goto LABEL_35;
    }

LABEL_39:
    v53 = MEMORY[0x277CCACA8];
    v54 = [(FHTransaction *)v5 currencyCode];
    v55 = [(FHTransaction *)self currencyCode];
    v56 = [v53 stringWithFormat:@"CurrencyCode %@ -> %@", v54, v55];
    [v6 addObject:v56];

    v50 = 0;
    goto LABEL_40;
  }

  v46 = v45;
  v47 = [(FHTransaction *)self currencyCode];
  v48 = [(FHTransaction *)v5 currencyCode];
  v49 = [v47 isEqualToString:v48];

  if ((v49 & 1) == 0)
  {
    goto LABEL_39;
  }

LABEL_35:
  v50 = 1;
LABEL_40:
  v57 = [(FHTransaction *)self transactionDate];
  [v57 timeIntervalSinceReferenceDate];
  v59 = v58;

  v60 = [(FHTransaction *)v5 transactionDate];
  [v60 timeIntervalSinceReferenceDate];
  v62 = v61;

  v63 = [(FHTransaction *)self transactionDate];
  if (!v63 || ([(FHTransaction *)v5 transactionDate], (v64 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v65 = [(FHTransaction *)self transactionDate];
    v66 = [(FHTransaction *)v5 transactionDate];

    if (v63)
    {
    }

    if (v65 == v66)
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
  v68 = [(FHTransaction *)self displayName];
  if (!v68 || ([(FHTransaction *)v5 displayName], (v69 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v74 = [(FHTransaction *)self displayName];
    v75 = [(FHTransaction *)v5 displayName];

    if (v68)
    {
    }

    if (v74 == v75)
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
  v71 = [(FHTransaction *)self displayName];
  v72 = [(FHTransaction *)v5 displayName];
  v73 = [v71 isEqual:v72];

  if ((v73 & 1) == 0)
  {
    goto LABEL_55;
  }

LABEL_51:
  v170 = 1;
LABEL_56:
  v77 = v13 & v172;
  v78 = [(FHTransaction *)self merchantUniqueIdentifier];
  if (!v78 || ([(FHTransaction *)v5 merchantUniqueIdentifier], (v79 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v84 = [(FHTransaction *)self merchantUniqueIdentifier];
    v85 = [(FHTransaction *)v5 merchantUniqueIdentifier];

    if (v78)
    {
    }

    if (v84 == v85)
    {
      goto LABEL_59;
    }

LABEL_63:
    v86 = MEMORY[0x277CCACA8];
    v87 = [(FHTransaction *)v5 merchantUniqueIdentifier];
    v88 = [(FHTransaction *)self merchantUniqueIdentifier];
    v89 = [v86 stringWithFormat:@"MerchantUniqueIdentifier %@ -> %@", v87, v88];
    [v6 addObject:v89];

    v173 = 0;
    goto LABEL_64;
  }

  v80 = v79;
  v81 = [(FHTransaction *)self merchantUniqueIdentifier];
  v82 = [(FHTransaction *)v5 merchantUniqueIdentifier];
  v83 = [v81 isEqualToString:v82];

  if ((v83 & 1) == 0)
  {
    goto LABEL_63;
  }

LABEL_59:
  v173 = 1;
LABEL_64:
  v90 = v77 & v168;
  v91 = [(FHTransaction *)self name];
  if (!v91 || ([(FHTransaction *)v5 name], (v92 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v98 = [(FHTransaction *)self name];
    v99 = [(FHTransaction *)v5 name];

    if (v91)
    {
    }

    if (v98 == v99)
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
  v94 = [(FHTransaction *)self name];
  v95 = [(FHTransaction *)v5 name];
  v96 = [v94 isEqualToString:v95];

  if ((v96 & 1) == 0)
  {
    goto LABEL_71;
  }

LABEL_67:
  v97 = 1;
LABEL_72:
  v101 = v90 & v50;
  v102 = [(FHTransaction *)self proprietaryBankTransactionCode];
  if (!v102 || ([(FHTransaction *)v5 proprietaryBankTransactionCode], (v103 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v110 = [(FHTransaction *)self proprietaryBankTransactionCode];
    v111 = [(FHTransaction *)v5 proprietaryBankTransactionCode];

    if (v102)
    {
    }

    if (v110 == v111)
    {
      goto LABEL_75;
    }

LABEL_79:
    v112 = MEMORY[0x277CCACA8];
    v113 = [(FHTransaction *)v5 proprietaryBankTransactionCode];
    v114 = [(FHTransaction *)self proprietaryBankTransactionCode];
    v115 = [v112 stringWithFormat:@"ProprietaryBankTransactionCode %@ -> %@", v113, v114];
    v109 = v6;
    [v6 addObject:v115];

    v164 = 0;
    goto LABEL_80;
  }

  v104 = v103;
  v105 = [(FHTransaction *)self proprietaryBankTransactionCode];
  [(FHTransaction *)v5 proprietaryBankTransactionCode];
  v107 = v106 = v97;
  v108 = [v105 isEqualToString:v107];

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
  v117 = [(FHTransaction *)self proprietaryBankTransactionIssuer];
  if (v117 && ([(FHTransaction *)v5 proprietaryBankTransactionIssuer], (v118 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v119 = v118;
    v120 = [(FHTransaction *)self proprietaryBankTransactionIssuer];
    [(FHTransaction *)v5 proprietaryBankTransactionIssuer];
    v122 = v121 = v97;
    v123 = [v120 isEqualToString:v122];

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
    v125 = [(FHTransaction *)self proprietaryBankTransactionIssuer];
    v126 = [(FHTransaction *)v5 proprietaryBankTransactionIssuer];

    if (v117)
    {
    }

    if (v125 == v126)
    {
      goto LABEL_83;
    }
  }

  v127 = MEMORY[0x277CCACA8];
  v128 = [(FHTransaction *)v5 proprietaryBankTransactionIssuer];
  v129 = [(FHTransaction *)self proprietaryBankTransactionIssuer];
  v130 = [v127 stringWithFormat:@"ProprietaryBankTransactionIssuer %@ -> %@", v128, v129];
  [v109 addObject:v130];

  v124 = 0;
LABEL_88:
  v131 = v116 & v170;
  v132 = [(FHTransaction *)self transactionType];
  v169 = [(FHTransaction *)v5 transactionType];
  v171 = v132;
  if (v132 != v169)
  {
    v133 = [MEMORY[0x277CCACA8] stringWithFormat:@"TransactionType %lu -> %lu", -[FHTransaction transactionType](v5, "transactionType"), -[FHTransaction transactionType](self, "transactionType")];
    [v109 addObject:v133];
  }

  v134 = v131 & v173;
  v174 = [(FHTransaction *)self accountType];
  v167 = [(FHTransaction *)v5 accountType];
  if (v174 != v167)
  {
    v135 = [MEMORY[0x277CCACA8] stringWithFormat:@"AccountType %lu -> %lu", -[FHTransaction accountType](v5, "accountType"), -[FHTransaction accountType](self, "accountType")];
    [v109 addObject:v135];
  }

  v136 = [(FHTransaction *)self mapsMerchantID];
  v162 = [(FHTransaction *)v5 mapsMerchantID];
  v163 = v136;
  if (v136 != v162)
  {
    v137 = [MEMORY[0x277CCACA8] stringWithFormat:@"MapsMerchantID %llu -> %llu", -[FHTransaction mapsMerchantID](v5, "mapsMerchantID"), -[FHTransaction mapsMerchantID](self, "mapsMerchantID")];
    [v109 addObject:v137];
  }

  v138 = v134 & v97 & v164;
  v139 = [(FHTransaction *)self mapsMerchantBrandID];
  v140 = [(FHTransaction *)v5 mapsMerchantBrandID];
  if (v139 != v140)
  {
    v141 = [MEMORY[0x277CCACA8] stringWithFormat:@"MapsMerchantBrandID %llu -> %llu", -[FHTransaction mapsMerchantBrandID](v5, "mapsMerchantBrandID"), -[FHTransaction mapsMerchantBrandID](self, "mapsMerchantBrandID")];
    [v109 addObject:v141];
  }

  v142 = v138 & v124;
  v143 = [(FHTransaction *)self transactionDescription];
  if (!v143 || ([(FHTransaction *)v5 transactionDescription], (v144 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v152 = [(FHTransaction *)self transactionDescription];
    v153 = [(FHTransaction *)v5 transactionDescription];

    if (v143)
    {
    }

    if (v152 == v153)
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
  v146 = [(FHTransaction *)self transactionDescription];
  [(FHTransaction *)v5 transactionDescription];
  v147 = v139;
  v148 = v142;
  v150 = v149 = v109;
  v165 = [v146 isEqualToString:v150];

  v109 = v149;
  v142 = v148;
  v139 = v147;

  if ((v165 & 1) == 0)
  {
    goto LABEL_103;
  }

LABEL_99:
  v151 = 1;
LABEL_104:
  v155 = v139 != v140;
  v156 = v142 & v151 ^ 1;
  if (v176 != v175)
  {
    v156 = 1;
  }

  if (v171 != v169)
  {
    v156 = 1;
  }

  if (v174 != v167)
  {
    v156 = 1;
  }

  if (v163 != v162)
  {
    v156 = 1;
  }

  v14 = v155 | v156;
  if (((v155 | v156) & 1) != 0 && [v109 count])
  {
    v157 = FinHealthLogObject(@"FinHealthCore");
    if (os_log_type_enabled(v157, OS_LOG_TYPE_DEBUG))
    {
      v158 = [(FHTransaction *)self identifier];
      v159 = [v109 componentsJoinedByString:@"\n"];
      *buf = 136315651;
      v178 = "[FHTransaction bankConnectTransactionHasBeenUpdatedFrom:]";
      v179 = 2113;
      v180 = v158;
      v181 = 2113;
      v182 = v159;
      _os_log_impl(&dword_226DD4000, v157, OS_LOG_TYPE_DEBUG, "%sTransaction %{private}@ has been updated:\n%{private}@", buf, 0x20u);
    }
  }

LABEL_118:
  v160 = *MEMORY[0x277D85DE8];
  return v14 & 1;
}

- (FHTransaction)initWithDictionary:(id)a3 dateFormatter:(id)a4
{
  v6 = a3;
  v7 = a4;
  v122.receiver = self;
  v122.super_class = FHTransaction;
  v8 = [(FHTransaction *)&v122 init];
  if (v8)
  {
    v9 = [v6 valueForKey:@"identifier"];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    v11 = [v6 valueForKey:@"serviceIdentifier"];
    transactionServiceIdentifier = v8->_transactionServiceIdentifier;
    v8->_transactionServiceIdentifier = v11;

    v13 = [v6 valueForKey:@"financeAccountIdentifier"];
    financeAccountIdentifier = v8->_financeAccountIdentifier;
    v8->_financeAccountIdentifier = v13;

    v15 = [v6 valueForKey:@"financeTransactionIdentifier"];
    financeTransactionIdentifier = v8->_financeTransactionIdentifier;
    v8->_financeTransactionIdentifier = v15;

    v17 = [v6 valueForKey:@"financeTransactionIdentifier"];
    financeTransactionSharedIdentifier = v8->_financeTransactionSharedIdentifier;
    v8->_financeTransactionSharedIdentifier = v17;

    v19 = [v6 valueForKey:@"financeTransactionSource"];
    v8->_financeTransactionSource = [v19 integerValue];

    v20 = [v6 valueForKey:@"paymentHash"];
    paymentHash = v8->_paymentHash;
    v8->_paymentHash = v20;

    v22 = [v6 valueForKey:@"transactionSourceIdentifier"];
    transactionSourceIdentifier = v8->_transactionSourceIdentifier;
    v8->_transactionSourceIdentifier = v22;

    v24 = [v6 valueForKey:@"amount"];

    if (v24)
    {
      v25 = objc_alloc(MEMORY[0x277CCA980]);
      v26 = [v6 valueForKey:@"amount"];
      [v26 doubleValue];
      v27 = [v25 initWithDouble:?];
      amount = v8->_amount;
      v8->_amount = v27;
    }

    v29 = [v6 valueForKey:@"currencyCode"];
    currencyCode = v8->_currencyCode;
    v8->_currencyCode = v29;

    v31 = [v6 valueForKey:@"transactionDate"];
    v32 = [v7 dateFromString:v31];
    transactionDate = v8->_transactionDate;
    v8->_transactionDate = v32;

    v34 = [v6 valueForKey:@"transactionStatusChangedDate"];
    v35 = [v7 dateFromString:v34];
    transactionStatusChangedDate = v8->_transactionStatusChangedDate;
    v8->_transactionStatusChangedDate = v35;

    v37 = [v6 valueForKey:@"transactionStatus"];
    v8->_transactionStatus = [v37 integerValue];

    v38 = [v6 valueForKey:@"transactionSource"];
    v8->_transactionSource = [v38 integerValue];

    v39 = [v6 valueForKey:@"cardType"];
    v8->_cardType = [v39 integerValue];

    v40 = [v6 valueForKey:@"transactionType"];
    v8->_transactionType = [v40 integerValue];

    v41 = [v6 valueForKey:@"accountType"];
    v8->_accountType = [v41 integerValue];

    v42 = [v6 valueForKey:@"transactionInternalState"];
    v8->_transactionInternalState = [v42 integerValue];

    v43 = [v6 valueForKey:@"street"];
    street = v8->_street;
    v8->_street = v43;

    v45 = [v6 valueForKey:@"city"];
    city = v8->_city;
    v8->_city = v45;

    v47 = [v6 valueForKey:@"state"];
    state = v8->_state;
    v8->_state = v47;

    v49 = [v6 valueForKey:@"zip"];
    zip = v8->_zip;
    v8->_zip = v49;

    v51 = [v6 valueForKey:@"countryCode"];
    countryCode = v8->_countryCode;
    v8->_countryCode = v51;

    v53 = [v6 valueForKey:@"altDSID"];
    altDSID = v8->_altDSID;
    v8->_altDSID = v53;

    v55 = [v6 valueForKey:@"receiptIdentifier"];
    receiptIdentifier = v8->_receiptIdentifier;
    v8->_receiptIdentifier = v55;

    v57 = [v6 valueForKey:@"associatedReceiptUniqueID"];
    associatedReceiptUniqueID = v8->_associatedReceiptUniqueID;
    v8->_associatedReceiptUniqueID = v57;

    v59 = [v6 valueForKey:@"country"];
    country = v8->_country;
    v8->_country = v59;

    v61 = [v6 valueForKey:@"merchantUniqueIdentifier"];
    merchantUniqueIdentifier = v8->_merchantUniqueIdentifier;
    v8->_merchantUniqueIdentifier = v61;

    v63 = [v6 valueForKey:@"name"];
    name = v8->_name;
    v8->_name = v63;

    v65 = [v6 valueForKey:@"rawName"];
    rawName = v8->_rawName;
    v8->_rawName = v65;

    v67 = [v6 valueForKey:@"industryCode"];
    v8->_industryCode = [v67 integerValue];

    v68 = [v6 valueForKey:@"category"];
    v8->_category = [v68 integerValue];

    v69 = [v6 valueForKey:@"merchantDetailedCategory"];
    merchantDetailedCategory = v8->_merchantDetailedCategory;
    v8->_merchantDetailedCategory = v69;

    v71 = [v6 valueForKey:@"industryCategory"];
    industryCategory = v8->_industryCategory;
    v8->_industryCategory = v71;

    v73 = [v6 valueForKey:@"displayName"];
    displayName = v8->_displayName;
    v8->_displayName = v73;

    v75 = [v6 valueForKey:@"mapsMerchantID"];
    v8->_mapsMerchantID = [v75 unsignedLongLongValue];

    v76 = [v6 valueForKey:@"mapsMerchantResultProviderID"];
    v8->_mapsMerchantResultProviderID = [v76 integerValue];

    v77 = [v6 valueForKey:@"mapsMerchantBrandID"];
    v8->_mapsMerchantBrandID = [v77 unsignedLongLongValue];

    v78 = [v6 valueForKey:@"mapsMerchantBrandResultProviderID"];
    v8->_mapsMerchantBrandResultProviderID = [v78 integerValue];

    v79 = [v6 valueForKey:@"locationLatitude"];
    [v79 doubleValue];
    v81 = v80;

    v82 = [v6 valueForKey:@"locationLongitude"];
    [v82 doubleValue];
    v84 = v83;

    v85 = CLLocationCoordinate2DMake(v81, v84);
    if ((v81 != 0.0 || v84 != 0.0) && CLLocationCoordinate2DIsValid(v85))
    {
      v86 = objc_alloc(MEMORY[0x277CE41F8]);
      v87 = [v6 valueForKey:@"locationHorizontalAccuracy"];
      [v87 doubleValue];
      v89 = v88;
      v90 = [v6 valueForKey:@"locationVerticalAccuracy"];
      [v90 doubleValue];
      v92 = v91;
      v93 = [MEMORY[0x277CBEAA8] now];
      v94 = [v86 initWithCoordinate:v93 altitude:v85.latitude horizontalAccuracy:v85.longitude verticalAccuracy:0.0 timestamp:{v89, v92}];
      location = v8->_location;
      v8->_location = v94;
    }

    v96 = [v6 valueForKey:@"timeZone"];

    if (v96)
    {
      v97 = MEMORY[0x277CBEBB0];
      v98 = [v6 valueForKey:@"timeZone"];
      v99 = [v97 timeZoneForSecondsFromGMT:{objc_msgSend(v98, "integerValue")}];
      timeZone = v8->_timeZone;
      v8->_timeZone = v99;
    }

    v101 = [v6 valueForKey:@"disputeType"];
    v8->_disputeType = [v101 integerValue];

    v102 = [v6 valueForKey:@"disputeStatus"];
    v8->_disputeStatus = [v102 integerValue];

    v103 = [v6 valueForKey:@"peerPaymentCounterpartHandle"];
    peerPaymentCounterpartHandle = v8->_peerPaymentCounterpartHandle;
    v8->_peerPaymentCounterpartHandle = v103;

    v105 = [v6 valueForKey:@"peerPaymentType"];
    v8->_peerPaymentType = [v105 integerValue];

    v106 = [v6 valueForKey:@"transactionDescription"];
    transactionDescription = v8->_transactionDescription;
    v8->_transactionDescription = v106;

    v108 = [v6 valueForKey:@"processedDescription"];
    processedDescription = v8->_processedDescription;
    v8->_processedDescription = v108;

    v110 = [v6 valueForKey:@"recurring"];
    v8->_recurring = v110 != 0;

    v111 = [v6 valueForKey:@"disputeOpenDate"];
    v112 = [v7 dateFromString:v111];
    disputeOpenDate = v8->_disputeOpenDate;
    v8->_disputeOpenDate = v112;

    v114 = [v6 valueForKey:@"disputeLastUpdatedDate"];
    v115 = [v7 dateFromString:v114];
    disputeLastUpdatedDate = v8->_disputeLastUpdatedDate;
    v8->_disputeLastUpdatedDate = v115;

    v117 = [v6 valueForKey:@"proprietaryBankTransactionCode"];
    proprietaryBankTransactionCode = v8->_proprietaryBankTransactionCode;
    v8->_proprietaryBankTransactionCode = v117;

    v119 = [v6 valueForKey:@"proprietaryBankTransactionIssuer"];
    proprietaryBankTransactionIssuer = v8->_proprietaryBankTransactionIssuer;
    v8->_proprietaryBankTransactionIssuer = v119;
  }

  return v8;
}

- (FHTransaction)initWithDictionary:(id)a3
{
  v4 = MEMORY[0x277CCA968];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  [v6 setDateFormat:@"yyyy-MM-dd HH:mm:ss Z"];
  v7 = [(FHTransaction *)self initWithDictionary:v5 dateFormatter:v6];

  return v7;
}

- (FHTransaction)initWithJsonString:(id)a3
{
  v4 = [a3 dataUsingEncoding:4];
  v5 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v4 options:0 error:0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    self = [(FHTransaction *)self initWithDictionary:v5];
  }

  v6 = self;

  return v6;
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

- (id)toJson:(id)a3
{
  v4 = a3;
  v5 = [(FHTransaction *)self toDictionary];
  v10 = v4;
  v6 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v5 options:2 error:&v10];
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
  block[4] = a1;
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
  v3 = [(FHTransaction *)self location];
  if (v3)
  {
    v4 = [(FHTransaction *)self location];
    [v4 coordinate];
    if (v5 == 0.0)
    {
      v8 = 0;
    }

    else
    {
      v6 = [(FHTransaction *)self location];
      [v6 coordinate];
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