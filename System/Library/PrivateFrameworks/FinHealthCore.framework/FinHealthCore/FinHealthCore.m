uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_226DD6200()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226DD623C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226DD6274()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_226DD62C0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226DD62F8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226DD6330()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_226DD6380(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_226E635C0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_226DD643C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_226E635C0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_226DD6504()
{
  _Block_release(*(v0 + 32));
  _Block_release(*(v0 + 40));
  _Block_release(*(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_226DD6568()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226DD65A0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226DD65E4()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[9];

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_226DD662C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226DD6664()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226DD66B4()
{
  sub_226E47FFC(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_226DD66F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_226E63590();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_226DD67A0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_226E63590();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_226DD6844()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226DD689C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_226DD68E4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226DD691C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226DD6954()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  v4 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_226DD69AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_226E635C0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_226DD6A68(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_226E635C0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_226DD6B34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_226E63040();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_226DD6BE0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_226E63040();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_226DD6C84()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226DD6CC4()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226DD6D0C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226DD6D44()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 48);

  v5 = *(v0 + 56);

  v6 = *(v0 + 64);

  v7 = *(v0 + 72);

  v8 = *(v0 + 80);

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_226DD6DBC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226DD6DF4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_226DD74E8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 104));
  _Unwind_Resume(a1);
}

id CreateTablesAndIndexes()
{
  if (CreateTablesAndIndexes_onceToken != -1)
  {
    CreateTablesAndIndexes_cold_1();
  }

  v1 = CreateTablesAndIndexes__ddlCreateTables;

  return v1;
}

void __CreateTablesAndIndexes_block_invoke()
{
  v14 = MEMORY[0x277CBEA60];
  v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"create table if not exists %@ %@", @"transactions", @"(t_tid integer primary key autoincrement, t_identifier text, t_service_identifier text, a_finance_account_id text, t_finance_transaction_id text, t_finance_transaction_shared_id text, t_finance_transaction_source integer, t_payment_hash text, t_source_identifier text, t_amount integer, t_currencycode text, t_timezone integer, t_date integer, t_status integer, t_status_changed_date integer, t_source integer, t_card_type integer, t_type integer, a_type integer, t_altDSID text, t_receipt_identifier text, t_associated_receipt_unique_id text, t_fh_internal_state integer, m_merchant_identifier text, m_industrycode integer, m_name text, m_raw_name text, m_category integer, m_detailed_category text, m_displayname text, m_street text, m_city text, m_state text, m_zip text, m_country_code text, m_country text, m_maps_merchant_id text, m_maps_merchant_result_id integer, m_maps_merchant_brand_id text, m_maps_merchant_brand_result_id integer, lat real, long real, v_accuracy real, h_accuracy real, dispute_type integer, dispute_status integer, peer_pay_counterpart text, peer_pay_type integer, t_description text, processed_description text, peer_pay_is_recurring integer, dispute_open_date integer, dispute_last_updated_date integer, proprietary_bank_transaction_code text, proprietary_bank_transaction_issuer text)"];;
  v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"create table if not exists %@ %@", @"transaction_features", @"(t_identifier text primary key, t_features text, t_compound_features text, locale text, t_mark_for_delete integer, t_finance_transaction_id text)"];;
  v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"create table if not exists %@ %@", @"features_deterministic_realtime", @"(f1_tid integer primary key autoincrement, t_identifier text UNIQUE, a integer, b integer, c integer, f integer, g integer)"];;
  v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"create table if not exists %@ %@", @"features_predicted_realtime", @"(f2_tid integer primary key autoincrement, identifier text, feature_name text, feature_predicted_class integer, version text, data_type integer, predicted_score real, UNIQUE(identifier, feature_name, feature_predicted_class, version))"];;
  v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"create table if not exists %@ %@", @"features_prediction_labels", @"(feature_label_id integer primary key autoincrement, feature_name text, feature_predicted_class integer, smart_feature_name text, UNIQUE(feature_name, feature_predicted_class, smart_feature_name))"];;
  v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"create table if not exists %@ %@", @"features_compound_realtime", @"(f3_tid integer primary key autoincrement, t_identifier text UNIQUE, t_compound_feature_value text)"];;
  v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"create table if not exists %@ %@", @"features_merchant", @"(merchant_aggregate_id integer primary key autoincrement, merchant_aggregate_type text, merchant_aggregate_value text, start_date integer, end_date integer, UNIQUE(merchant_aggregate_type, start_date, end_date))"];;
  v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"create table if not exists %@ %@", @"features_detailed_category", @"(category_aggregate_id integer primary key autoincrement, detailed_category text, amount integer, transaction_count integer, country_code text, recurring_transaction_ratio real, time_of_day integer, time_window integer, start_date real, end_date real, UNIQUE(detailed_category, time_of_day, time_window, country_code))"];;
  v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"create table if not exists %@ %@", @"features_datetime", @"(datetime_aggregate_id integer primary key autoincrement, datetime_aggregate_type text, datetime_aggregate_value_start_date integer, datetime_aggregate_value_end_date integer, start_date integer, end_date integer, UNIQUE(datetime_aggregate_type, start_date, end_date))"];;
  v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"create table if not exists %@ %@", @"features_amount", @"(amount_aggregate_id integer primary key autoincrement, amount_aggregate_type text, amount_aggregate_value integer, comparison_operator text, start_date integer, end_date integer, UNIQUE(amount_aggregate_type, start_date, end_date))"];;
  v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"create table if not exists %@ %@", @"fh_schema", @"(sch_id integer primary key autoincrement, sch_version_id text, sch_upgrade_status integer, sch_date integer, sch_getall_status integer)"];;
  v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"create table if not exists %@ %@", @"features_heuristics", @"(h_id integer primary key autoincrement, t_identifier text, t_heuristics_identifier text, t_heuristics_value integer, t_heuristics_score real, UNIQUE(t_identifier, t_heuristics_identifier))"];;
  v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"create table if not exists %@ %@", @"features_instrumentation", @"(inst_id integer primary key autoincrement, tag_source integer, tag_type integer, tag_click_date integer, pass_type integer, heuristics_identifier text, account_state integer, paid_using_ring integer)"];;
  v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"create table if not exists %@ %@", @"features_events", @"(e_id integer primary key autoincrement, e_identifier text, start_date integer, end_date integer, UNIQUE(e_identifier, start_date, end_date))"];;
  v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"create table if not exists %@ %@", @"fh_processing_history", @"(fh_processing_history_id integer primary key autoincrement, feature_name text, feature_processing_date integer, feature_data text, UNIQUE(feature_name))"];;
  v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"create table if not exists %@ %@", @"features_peer_payments", @"(p1_tid integer primary key autoincrement, source_identifier text, peer_pay_counterpart text, amount integer, frequency real, peer_pay_type integer, forecast_date integer, forecast_signal_type integer, heuristics_identifier text, UNIQUE(heuristics_identifier))"];;
  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"create table if not exists %@ %@", @"features_insight_trends", @"(trend_pid integer primary key autoincrement, trend_date real, trend_direction integer, trend_feature_name text, trend_feature_type text, trend_spend real, trend_window integer, trend_average real, trend_readable_description text)"];;
  v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"create index if not exists %@ on %@(%@)", @"t_date_index", @"transactions", @"t_date"];;
  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"create index if not exists %@ on %@(%@)", @"t_identifier_index", @"transactions", @"t_identifier"];;
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"create index if not exists %@ on %@(%@)", @"t_finance_transaction_id_index", @"transactions", @"t_finance_transaction_id"];;
  v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"create index if not exists %@ on %@(%@)", @"a_finance_account_id_index", @"transactions", @"a_finance_account_id"];;
  v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"create index if not exists %@ on %@(%@)", @"identifier_index", @"features_predicted_realtime", @"identifier"];;
  v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"create index if not exists %@ on %@(%@)", @"pattern_class_index", @"features_predicted_realtime", @"feature_predicted_class"];;
  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"create table if not exists %@ %@", @"fh_account_information", @"(source_identifier text primary key, account_type integer, account_balance integer, source_type, account_currency_code text, account_date integer, account_category integer, account_description text, account_status integer, credit_limit integer, next_payment_date real, minimum_payment_amount integer, overdue_payment_amount integer, institution_name text, institution_id text, unique_account_id text, UNIQUE(institution_id, unique_account_id))"];;
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", @"CREATE VIRTUAL TABLE IF NOT EXISTS fts_transactions USING fts5(t_identifier UNINDEXED, t_source_identifier UNINDEXED, a_type UNINDEXED, t_date UNINDEXED, t_amount UNINDEXED, processed_description, content=transactions, content_rowid=t_tid)"];;
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"create table if not exists %@ %@", @"fh_grouping", @"(g_id integer primary key autoincrement, t_identifier text, group_id text, similarity_score text, group_type integer, UNIQUE(t_identifier))"];;
  v0 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", @"CREATE TRIGGER IF NOT EXISTS transactions_ai AFTER INSERT ON transactions BEGIN INSERT INTO fts_transactions(rowid, t_identifier, t_source_identifier, a_type, t_date, t_amount, processed_description) VALUES (new.t_tid, new.t_identifier, new.t_source_identifier, new.a_type, new.t_date, new.t_amount, new.processed_description) END;"];;
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", @"CREATE TRIGGER IF NOT EXISTS transactions_bu BEFORE UPDATE ON transactions BEGIN INSERT INTO fts_transactions(fts_transactions, rowid, t_identifier, t_source_identifier, a_type, t_date, t_amount, processed_description) VALUES('delete', old.t_tid, old.t_identifier, old.t_source_identifier, old.a_type, old.t_date, old.t_amount, old.processed_description) END;"];;
  v1 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", @"CREATE TRIGGER IF NOT EXISTS transactions_bd BEFORE DELETE ON transactions BEGIN INSERT INTO fts_transactions(fts_transactions, rowid, t_identifier, t_source_identifier, a_type, t_date, t_amount, processed_description) VALUES('delete', old.t_tid, old.t_identifier, old.t_source_identifier, old.a_type, old.t_date, old.t_amount, old.processed_description) END;"];;
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", @"CREATE TRIGGER IF NOT EXISTS transactions_au AFTER UPDATE ON transactions BEGIN INSERT INTO fts_transactions(rowid, t_identifier, t_source_identifier, a_type, t_date, t_amount, processed_description) VALUES (new.t_tid, new.t_identifier, new.t_source_identifier, new.a_type, new.t_date, new.t_amount, new.processed_description) END;"];;
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"create table if not exists %@ %@", @"fh_recurring_predictions", @"(source_identifier text, merchant_entity text, detailed_category text, amount integer, frequency real, transaction_type integer, transaction_source integer, forecast_date real, forecast_signal_type integer, heuristic_identifier text, UNIQUE(heuristic_identifier))"];;
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"create table if not exists %@ %@", @"fh_receipt_data", @"(fhr_id integer primary key autoincrement, receiptIdentifier text, line_item_index text, title text, subtitle text, quantity integer, amount integer, currencyCode text, adamIdentifier integer, UNIQUE(receiptIdentifier, line_item_index))"];;
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"create table if not exists %@ %@", @"fh_summarization_data", @"(account_identifier text, summary text, summary_processing_date integer, summary_date_window text, UNIQUE(account_identifier, summary_date_window))"];;
  v6 = [v14 arrayWithObjects:{v35, v34, v32, v33, v31, v29, v30, v28, v27, v26, v25, v24, v23, v21, v22, v20, v13, v19, v12, v11, v18, v17, v16, v15, v9, v10, v0, v8, v1, v2, v3, v4, v5, 0}];
  v7 = CreateTablesAndIndexes__ddlCreateTables;
  CreateTablesAndIndexes__ddlCreateTables = v6;
}

id DropTablesAndIndexes()
{
  if (DropTablesAndIndexes_onceToken != -1)
  {
    DropTablesAndIndexes_cold_1();
  }

  v1 = DropTablesAndIndexes__ddlDropTables;

  return v1;
}

void __DropTablesAndIndexes_block_invoke()
{
  v16 = MEMORY[0x277CBEA60];
  v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"drop table if exists %@", @"fh_schema"];;
  v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"drop table if exists %@", @"transactions"];;
  v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"drop table if exists %@", @"transaction_features"];;
  v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"drop table if exists %@", @"features_deterministic_realtime"];;
  v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"drop table if exists %@", @"features_prediction_labels"];;
  v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"drop table if exists %@", @"features_compound_realtime"];;
  v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"drop table if exists %@", @"features_predicted_realtime"];;
  v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"drop table if exists %@", @"features_merchant"];;
  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"drop table if exists %@", @"features_detailed_category"];;
  v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"drop table if exists %@", @"features_datetime"];;
  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"drop table if exists %@", @"features_amount"];;
  v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"drop table if exists %@", @"features_heuristics"];;
  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"drop table if exists %@", @"features_events"];;
  v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"drop table if exists %@", @"features_instrumentation"];;
  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"drop table if exists %@", @"fh_processing_history"];;
  v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"drop table if exists %@", @"features_peer_payments"];;
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"drop table if exists %@", @"features_insight_trends"];;
  v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"drop table if exists %@", @"fh_account_information"];;
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"drop table if exists %@", @"fh_grouping"];;
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"drop table if exists %@", @"fts_transactions"];;
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"drop trigger %@", @"transactions_au"];;
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"drop trigger %@", @"transactions_ai"];;
  v0 = [MEMORY[0x277CCACA8] stringWithFormat:@"drop trigger %@", @"transactions_bd"];;
  v1 = [MEMORY[0x277CCACA8] stringWithFormat:@"drop trigger %@", @"transactions_bu"];;
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"drop table if exists %@", @"fh_recurring_predictions"];;
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"drop table if exists %@", @"fh_receipt_data"];;
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"drop table if exists %@", @"fh_summarization_data"];;
  v5 = [v16 arrayWithObjects:{v29, v28, v27, v26, v25, v24, v23, v22, v15, v21, v14, v20, v13, v19, v12, v18, v11, v17, v10, v9, v8, v7, v0, v1, v2, v3, v4, 0}];
  v6 = DropTablesAndIndexes__ddlDropTables;
  DropTablesAndIndexes__ddlDropTables = v5;
}

void sub_226DDAF50(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_226DDC704(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_226DDE214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_226DDE764(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_226DDEDAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_226DE41D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, char a60)
{
  _Block_object_dispose(&a42, 8);
  _Block_object_dispose(&a48, 8);
  _Block_object_dispose(&a54, 8);
  _Block_object_dispose(&a60, 8);
  _Block_object_dispose(&STACK[0x200], 8);
  _Block_object_dispose(&STACK[0x230], 8);
  _Unwind_Resume(a1);
}

void sub_226DE6F08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_226DE70B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_226DE74F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  objc_destroyWeak((v29 + 80));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v30 - 160), 8);
  _Block_object_dispose((v30 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_226DE8674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_226DE9104(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose(&a49, 8);
  _Block_object_dispose(&a55, 8);
  _Block_object_dispose(&a61, 8);
  _Block_object_dispose(&a67, 8);
  _Block_object_dispose(&a71, 8);
  _Block_object_dispose(&STACK[0x210], 8);
  _Block_object_dispose((v71 - 256), 8);
  _Block_object_dispose((v71 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_226DEA4D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose(&a51, 8);
  _Block_object_dispose(&a57, 8);
  _Block_object_dispose(&a63, 8);
  _Block_object_dispose(&a69, 8);
  _Block_object_dispose((v69 - 192), 8);
  _Unwind_Resume(a1);
}

void sub_226DEB5A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_226DEBBD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_226DEBDB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_226DECAF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_226DEE094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v10 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_226DEE904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_226DEEBC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id FinHealthLogObject(void *a1)
{
  v1 = FinHealthLogObject___once;
  v2 = a1;
  if (v1 != -1)
  {
    FinHealthLogObject_cold_1();
  }

  v3 = FinHealthLogFacilities();
  v4 = [v3 indexOfObject:v2];

  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  v6 = FinHealthLogObject_logObjects[v5];

  return v6;
}

uint64_t __FinHealthLogObject_block_invoke()
{
  v0 = os_log_create("com.apple.FinHealth", [@"FinHealthClient" UTF8String]);
  v1 = FinHealthLogObject_logObjects[0];
  FinHealthLogObject_logObjects[0] = v0;

  v2 = os_log_create("com.apple.FinHealth", [@"FinHealthServer" UTF8String]);
  v3 = qword_280CEA448;
  qword_280CEA448 = v2;

  v4 = os_log_create("com.apple.FinHealth", [@"FinHealthSQL" UTF8String]);
  v5 = qword_280CEA450;
  qword_280CEA450 = v4;

  qword_280CEA458 = os_log_create("com.apple.FinHealth", [@"FinHealthCore" UTF8String]);

  return MEMORY[0x2821F96F8]();
}

id FinHealthLogFacilities()
{
  if (FinHealthLogFacilities___once != -1)
  {
    FinHealthLogFacilities_cold_1();
  }

  v1 = FinHealthLogFacilities_logFacilities;

  return v1;
}

void __FinHealthLogFacilities_block_invoke()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[0] = @"FinHealthClient";
  v3[1] = @"FinHealthServer";
  v3[2] = @"FinHealthSQL";
  v3[3] = @"FinHealthCore";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:4];
  v1 = FinHealthLogFacilities_logFacilities;
  FinHealthLogFacilities_logFacilities = v0;

  v2 = *MEMORY[0x277D85DE8];
}

void sub_226DF1658(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t FHTransactionTimeOfDayFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"EarlyMorning"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"Morning"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"Daytime"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"Evening"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"Nighttime"])
  {
    v2 = 5;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *FHTransactionTimeOfDayToString(unint64_t a1)
{
  if (a1 > 5)
  {
    return @"unknown";
  }

  else
  {
    return off_2785CB5C8[a1];
  }
}

__CFString *FHTransactionRepeatingPatternClassToFHSmartFeature(uint64_t a1)
{
  v2 = 0;
  if (a1 <= 2)
  {
    switch(a1)
    {
      case 0:
        goto LABEL_3;
      case 1:
        v3 = FHSmartFeatureAggregateTypeRegular;
        goto LABEL_4;
      case 2:
        v3 = FHSmartFeatureAggregateTypeIrregular;
        goto LABEL_4;
    }
  }

  else
  {
    if ((a1 - 3) < 8)
    {
LABEL_3:
      v3 = FHSmartFeatureAggregateTypeRecurring;
LABEL_4:
      v2 = *v3;
      goto LABEL_5;
    }

    if (a1 == 11)
    {
      v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", 11];
    }
  }

LABEL_5:

  return v2;
}

id loadConfigurationFromJsonFile(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277CCA8D8];
  v2 = a1;
  v3 = [v1 bundleForClass:objc_opt_class()];
  v4 = [v3 bundlePath];

  v5 = FinHealthLogObject(@"FinHealthCore");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v11 = 138412290;
    v12 = v4;
    _os_log_impl(&dword_226DD4000, v5, OS_LOG_TYPE_DEBUG, "bundle path: %@", &v11, 0xCu);
  }

  v6 = [MEMORY[0x277CCA8D8] bundleWithPath:v4];
  v7 = [v6 pathForResource:v2 ofType:@"json" inDirectory:@"FeaturesResources"];

  v8 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

id FHSmartFeaturesDict()
{
  if (FHSmartFeaturesDict_onceToken != -1)
  {
    FHSmartFeaturesDict_cold_1();
  }

  v1 = FHSmartFeaturesDict_fhSmartFeaturesDict;

  return v1;
}

void __FHSmartFeaturesDict_block_invoke()
{
  v16 = *MEMORY[0x277D85DE8];
  if (!_os_feature_enabled_impl())
  {
    goto LABEL_8;
  }

  v0 = [[FHExperiment alloc] initWithNamespaceName:@"WPC_ANALYTICS_FHCONFIGS"];
  v1 = [(FHExperiment *)v0 getFilePathForFactor:@"FH_CONFIG_ROLLOUT"];
  if (!v1)
  {

LABEL_8:
    v5 = FinHealthLogObject(@"FinHealthCore");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_226DD4000, v5, OS_LOG_TYPE_DEBUG, "Loading features.json data from default resource.", buf, 2u);
    }

    v3 = loadConfigurationFromJsonFile(@"assets_1671/features");
    goto LABEL_11;
  }

  v2 = v1;
  v3 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v1];
  v4 = FinHealthLogObject(@"FinHealthCore");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v15 = v2;
    _os_log_impl(&dword_226DD4000, v4, OS_LOG_TYPE_DEBUG, "Loading path: %@ for features.json data from Turi", buf, 0xCu);
  }

  if (!v3)
  {
    goto LABEL_8;
  }

LABEL_11:
  v13 = 0;
  v6 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v3 options:1 error:&v13];
  v7 = v13;
  v8 = FHSmartFeaturesDict_fhSmartFeaturesDict;
  FHSmartFeaturesDict_fhSmartFeaturesDict = v6;

  v9 = FinHealthLogObject(@"FinHealthCore");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = [FHSmartFeaturesDict_fhSmartFeaturesDict allKeys];
    *buf = 138412290;
    v15 = v10;
    _os_log_impl(&dword_226DD4000, v9, OS_LOG_TYPE_DEBUG, "[fhSmartFeaturesDict allKeys]: %@", buf, 0xCu);
  }

  if (!FHSmartFeaturesDict_fhSmartFeaturesDict)
  {
    v11 = FinHealthLogObject(@"FinHealthCore");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v15 = v7;
      _os_log_impl(&dword_226DD4000, v11, OS_LOG_TYPE_ERROR, "Error parsing JSON: %@", buf, 0xCu);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

id FHMerchantSmartFeaturesArray()
{
  if (FHMerchantSmartFeaturesArray_onceToken != -1)
  {
    FHMerchantSmartFeaturesArray_cold_1();
  }

  v1 = FHMerchantSmartFeaturesArray__fhSmartFeatures;

  return v1;
}

void __FHMerchantSmartFeaturesArray_block_invoke()
{
  v3 = FHSmartFeaturesDict();
  v0 = [v3 objectForKey:@"FHMerchantSmartFeatures"];
  v1 = [v0 allKeys];
  v2 = FHMerchantSmartFeaturesArray__fhSmartFeatures;
  FHMerchantSmartFeaturesArray__fhSmartFeatures = v1;
}

id FHAmountSmartFeaturesArray()
{
  if (FHAmountSmartFeaturesArray_onceToken != -1)
  {
    FHAmountSmartFeaturesArray_cold_1();
  }

  v1 = FHAmountSmartFeaturesArray__fhSmartFeatures;

  return v1;
}

void __FHAmountSmartFeaturesArray_block_invoke()
{
  v3 = FHSmartFeaturesDict();
  v0 = [v3 objectForKey:@"FHAmountSmartFeatures"];
  v1 = [v0 allKeys];
  v2 = FHAmountSmartFeaturesArray__fhSmartFeatures;
  FHAmountSmartFeaturesArray__fhSmartFeatures = v1;
}

id FHDateTimeSmartFeaturesArray()
{
  if (FHDateTimeSmartFeaturesArray_onceToken != -1)
  {
    FHDateTimeSmartFeaturesArray_cold_1();
  }

  v1 = FHDateTimeSmartFeaturesArray__fhSmartFeatures;

  return v1;
}

void __FHDateTimeSmartFeaturesArray_block_invoke()
{
  v3 = FHSmartFeaturesDict();
  v0 = [v3 objectForKey:@"FHDateTimeSmartFeatures"];
  v1 = [v0 allKeys];
  v2 = FHDateTimeSmartFeaturesArray__fhSmartFeatures;
  FHDateTimeSmartFeaturesArray__fhSmartFeatures = v1;
}

id FHRepeatingAggregateFeatureSet()
{
  if (FHRepeatingAggregateFeatureSet_onceToken != -1)
  {
    FHRepeatingAggregateFeatureSet_cold_1();
  }

  v1 = FHRepeatingAggregateFeatureSet__fhSmartFeatures;

  return v1;
}

uint64_t __FHRepeatingAggregateFeatureSet_block_invoke()
{
  FHRepeatingAggregateFeatureSet__fhSmartFeatures = [MEMORY[0x277CBEB98] setWithObjects:{@"FHSmartFeatureAggregateTypeRecurring", @"FHSmartFeatureAggregateTypeRegular", @"FHSmartFeatureAggregateTypeIrregular", 0}];

  return MEMORY[0x2821F96F8]();
}

id FHMultiClassPredictionsSmartFeaturesArray()
{
  if (FHMultiClassPredictionsSmartFeaturesArray_onceToken != -1)
  {
    FHMultiClassPredictionsSmartFeaturesArray_cold_1();
  }

  v1 = FHMultiClassPredictionsSmartFeaturesArray__fhSmartFeatures;

  return v1;
}

uint64_t __FHMultiClassPredictionsSmartFeaturesArray_block_invoke()
{
  FHMultiClassPredictionsSmartFeaturesArray__fhSmartFeatures = [MEMORY[0x277CBEA60] arrayWithObjects:{@"FHSmartFeatureAggregateTypeRecurring", @"FHSmartFeatureAggregateTypeRegular", @"FHSmartFeatureAggregateTypeIrregular", 0}];

  return MEMORY[0x2821F96F8]();
}

id FHMultiClassPredictionsSmartFeaturesAsString()
{
  if (FHMultiClassPredictionsSmartFeaturesAsString_onceToken != -1)
  {
    FHMultiClassPredictionsSmartFeaturesAsString_cold_1();
  }

  v1 = FHMultiClassPredictionsSmartFeaturesAsString__commaSeparatedBinaryPredictionsSmartFeatures;

  return v1;
}

void __FHMultiClassPredictionsSmartFeaturesAsString_block_invoke()
{
  v15 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_new();
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v1 = FHMultiClassPredictionsSmartFeaturesArray();
  v2 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v11;
    do
    {
      v5 = 0;
      do
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v10 + 1) + 8 * v5);
        [v0 appendString:{@"", v10}];
        [v0 appendString:v6];
        [v0 appendString:{@", "}];
        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v3);
  }

  if ([v0 length])
  {
    [v0 substringToIndex:{objc_msgSend(v0, "length") - 1}];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithString:v0];
  }
  v7 = ;
  v8 = FHMultiClassPredictionsSmartFeaturesAsString__commaSeparatedBinaryPredictionsSmartFeatures;
  FHMultiClassPredictionsSmartFeaturesAsString__commaSeparatedBinaryPredictionsSmartFeatures = v7;

  v9 = *MEMORY[0x277D85DE8];
}

id FHApplicationToTagsMapping()
{
  if (FHApplicationToTagsMapping_onceToken != -1)
  {
    FHApplicationToTagsMapping_cold_1();
  }

  v1 = FHApplicationToTagsMapping_fhFeaturesForApplications;

  return v1;
}

void __FHApplicationToTagsMapping_block_invoke()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = loadConfigurationFromJsonFile(@"features_for_applications");
  v6 = 0;
  v1 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v0 options:1 error:&v6];
  v2 = v6;
  v3 = FHApplicationToTagsMapping_fhFeaturesForApplications;
  FHApplicationToTagsMapping_fhFeaturesForApplications = v1;

  if (!FHApplicationToTagsMapping_fhFeaturesForApplications)
  {
    v4 = FinHealthLogObject(@"FinHealthCore");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v8 = v2;
      _os_log_impl(&dword_226DD4000, v4, OS_LOG_TYPE_ERROR, "Error parsing JSON: %@", buf, 0xCu);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

void *FHProprietaryCodesMapping()
{
  v12 = *MEMORY[0x277D85DE8];
  v0 = loadConfigurationFromJsonFile(@"income_filters");
  v9 = 0;
  v1 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v0 options:1 error:&v9];
  v2 = v9;
  v3 = FHProprietaryCodesMapping_fhIncomePropietaryCodes;
  FHProprietaryCodesMapping_fhIncomePropietaryCodes = v1;

  v4 = FHProprietaryCodesMapping_fhIncomePropietaryCodes;
  if (!FHProprietaryCodesMapping_fhIncomePropietaryCodes)
  {
    v5 = FinHealthLogObject(@"FinHealthCore");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v11 = v2;
      _os_log_impl(&dword_226DD4000, v5, OS_LOG_TYPE_ERROR, "Error parsing JSON: %@", buf, 0xCu);
    }

    v4 = FHProprietaryCodesMapping_fhIncomePropietaryCodes;
  }

  v6 = v4;

  v7 = *MEMORY[0x277D85DE8];
  return v4;
}

id FHApplications()
{
  if (FHApplications_onceToken != -1)
  {
    FHApplications_cold_1();
  }

  v1 = FHApplications_fhApplications;

  return v1;
}

uint64_t __FHApplications_block_invoke()
{
  FHApplications_fhApplications = [MEMORY[0x277CBEA60] arrayWithObjects:{@"Search", @"Payment Ring", @"Messaging", @"Test Client", 0}];

  return MEMORY[0x2821F96F8]();
}

id FHCleanSuperMerchants()
{
  if (FHCleanSuperMerchants_onceToken != -1)
  {
    FHCleanSuperMerchants_cold_1();
  }

  v1 = FHCleanSuperMerchants_fhSuperMerchants;

  return v1;
}

uint64_t __FHCleanSuperMerchants_block_invoke()
{
  FHCleanSuperMerchants_fhSuperMerchants = [MEMORY[0x277CBEA60] arrayWithObjects:{@"uber", @"ubereats", @"nike", @"panera", @"exxon", @"mobil", @"acehardware", @"walgreens", @"duanereade", 0}];

  return MEMORY[0x2821F96F8]();
}

id FHSuperMerchants()
{
  if (FHSuperMerchants_onceToken != -1)
  {
    FHSuperMerchants_cold_1();
  }

  v1 = FHSuperMerchants_fhSuperMerchants;

  return v1;
}

uint64_t __FHSuperMerchants_block_invoke()
{
  FHSuperMerchants_fhSuperMerchants = [MEMORY[0x277CBEA60] arrayWithObjects:{@"Uber", @"Uber Eats", @"Nike", @"Panera", @"Exxon", @"Mobil", @"Ace Hardware", @"Walgreens", @"Duane Reade", 0}];

  return MEMORY[0x2821F96F8]();
}

id getCleanMerchantName(void *a1)
{
  v1 = MEMORY[0x277CCA900];
  v2 = a1;
  v3 = [v1 characterSetWithCharactersInString:@"!@#$%^&*()_+|"];
  v4 = [v2 componentsSeparatedByCharactersInSet:v3];

  v5 = [v4 componentsJoinedByString:&stru_283A7B918];
  v6 = [v5 stringByReplacingOccurrencesOfString:@" " withString:&stru_283A7B918];
  v7 = [v6 lowercaseString];

  return v7;
}

id FHMerchantsUnaffectedBySource()
{
  if (FHMerchantsUnaffectedBySource_onceToken != -1)
  {
    FHMerchantsUnaffectedBySource_cold_1();
  }

  v1 = FHMerchantsUnaffectedBySource_fhMerchantsUnaffectedBySource;

  return v1;
}

uint64_t __FHMerchantsUnaffectedBySource_block_invoke()
{
  FHMerchantsUnaffectedBySource_fhMerchantsUnaffectedBySource = [MEMORY[0x277CBEA60] arrayWithObjects:{@"apple", @"appleservices", 0}];

  return MEMORY[0x2821F96F8]();
}

__CFString *FHApplicationFromProcessName(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"passd"])
  {
    v2 = @"Search";
  }

  else if ([v1 isEqualToString:@"PassKitUI"])
  {
    v2 = @"Payment Ring";
  }

  else if ([v1 isEqualToString:@"engagementd"])
  {
    v2 = @"Messaging";
  }

  else if ([v1 isEqualToString:@"finhealth_client"])
  {
    v2 = @"Test Client";
  }

  else
  {
    v2 = @"unknown Client";
  }

  return v2;
}

id FHPeerPaymentForecastingSignalPriority()
{
  if (FHPeerPaymentForecastingSignalPriority_onceToken != -1)
  {
    FHPeerPaymentForecastingSignalPriority_cold_1();
  }

  v1 = FHPeerPaymentForecastingSignalPriority_peerPaymentForecastingSignalPriority;

  return v1;
}

uint64_t __FHPeerPaymentForecastingSignalPriority_block_invoke()
{
  FHPeerPaymentForecastingSignalPriority_peerPaymentForecastingSignalPriority = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{&unk_283A88218, &unk_283A88230, &unk_283A88248, &unk_283A88260, &unk_283A88278, &unk_283A88290, &unk_283A882A8, &unk_283A882C0, &unk_283A882A8, &unk_283A882D8, &unk_283A882A8, &unk_283A882F0, &unk_283A882A8, &unk_283A88308, &unk_283A882A8, &unk_283A88320, 0}];

  return MEMORY[0x2821F96F8]();
}

uint64_t FHDataDirectory()
{
  v0 = CPSharedResourcesDirectory();

  return [v0 stringByAppendingPathComponent:@"/Library/FinHealth/"];
}

id FHModelDirectory()
{
  v0 = [CPSharedResourcesDirectory() stringByAppendingPathComponent:@"/Library/FinHealth/"];
  v1 = [v0 stringByAppendingPathComponent:@"/mlmodels/"];

  return v1;
}

id GetProcessingDate()
{
  if (GetProcessingDate_onceToken != -1)
  {
    GetProcessingDate_cold_1();
  }

  v1 = GetProcessingDate_processingDate;

  return v1;
}

uint64_t __GetProcessingDate_block_invoke()
{
  GetProcessingDate_processingDate = [MEMORY[0x277CBEAA8] now];

  return MEMORY[0x2821F96F8]();
}

double TimeWindowToSeconds(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      return 31536000.0 * -0.5;
    }

    if (a1 == 3)
    {
      return -31536000.0;
    }

LABEL_7:
    v2 = GetProcessingDate();
    [v2 timeIntervalSinceReferenceDate];
    v1 = -v3;

    return v1;
  }

  if (a1 != 1)
  {
    goto LABEL_7;
  }

  return 0xFFFFFFFFFF895900;
}

uint64_t GetTimeOfDay(void *a1, void *a2)
{
  v3 = MEMORY[0x277CBEA80];
  v4 = a2;
  v5 = a1;
  v6 = [v3 currentCalendar];
  [v6 setTimeZone:v4];

  v7 = [v6 components:636 fromDate:v5];

  v8 = [v7 hour];
  if (v8 > 0x18)
  {
    v9 = 0;
  }

  else
  {
    v9 = qword_226E680A8[v8];
  }

  return v9;
}

__CFString *FHInsightTrendWindowToString(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"week";
  }

  else
  {
    return off_2785CB5F8[a1];
  }
}

__CFString *FHMerchantCategoryToString(uint64_t a1)
{
  if ((a1 - 1) > 6)
  {
    return @"Unknown";
  }

  else
  {
    return off_2785CB618[a1 - 1];
  }
}

uint64_t FHMerchantCategoryFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"Food & Drinks"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"Shopping"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"Travel"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"Services"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"Entertainment"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"Health"])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:@"Transportation"])
  {
    v2 = 7;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *GetDayOfWeekFromSignalDate(void *a1)
{
  v1 = MEMORY[0x277CBEA80];
  v2 = a1;
  v3 = [v1 currentCalendar];
  v4 = [v3 component:512 fromDate:v2];

  if ((v4 - 1) > 6)
  {
    return @"UNKNOWN";
  }

  else
  {
    return off_2785CB650[v4 - 1];
  }
}

id GetPeriodicCategoryFromFrequency(void *a1)
{
  v1 = MEMORY[0x277CCA988];
  v2 = a1;
  v3 = [[v1 alloc] initWithRoundingMode:0 scale:0 raiseOnExactness:0 raiseOnOverflow:0 raiseOnUnderflow:0 raiseOnDivideByZero:1];
  v4 = [objc_alloc(MEMORY[0x277CCA980]) initWithInteger:86400];
  v5 = [v2 decimalNumberByDividingBy:v4 withBehavior:v3];

  v6 = [v5 integerValue];
  if ((v6 - 6) >= 3)
  {
    if ((v6 - 13) >= 3)
    {
      if ((v6 - 27) >= 7)
      {
        v7 = 1;
      }

      else
      {
        v7 = 5;
      }
    }

    else
    {
      v7 = 4;
    }
  }

  else
  {
    v7 = 3;
  }

  v8 = FHRecurringPeerPaymentPeriodicCategoryTypeToString(v7);

  return v8;
}

id FHDateFromNumberOfDays(void *a1, uint64_t a2)
{
  v3 = MEMORY[0x277CBEAB8];
  v4 = a1;
  v5 = objc_alloc_init(v3);
  [v5 setDay:a2];
  v6 = [MEMORY[0x277CBEA80] currentCalendar];
  v7 = [v6 dateByAddingComponents:v5 toDate:v4 options:0];

  return v7;
}

id FHStartOfYear(void *a1)
{
  v1 = MEMORY[0x277CBEA80];
  v2 = a1;
  v3 = [v1 currentCalendar];
  v4 = [v3 components:6 fromDate:v2];

  v5 = [v3 dateFromComponents:v4];

  return v5;
}

id FHStartOfLastYear(void *a1)
{
  v1 = MEMORY[0x277CBEA80];
  v2 = a1;
  v3 = [v1 currentCalendar];
  v4 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  [v4 setYear:-1];
  v5 = [v3 dateByAddingComponents:v4 toDate:v2 options:0];

  v6 = FHStartOfYear(v5);

  return v6;
}

id FHDateStartOfWeek(void *a1, uint64_t a2)
{
  v3 = MEMORY[0x277CBEA80];
  v4 = a1;
  v5 = [v3 currentCalendar];
  if ([v5 component:512 fromDate:v4] != a2)
  {
    v6 = [v5 nextDateAfterDate:v4 matchingUnit:512 value:a2 options:260];

    v4 = v6;
  }

  v7 = [v5 components:28702 fromDate:v4];

  v8 = [v5 dateFromComponents:v7];

  return v8;
}

id FHDateStartOfLastMonth(void *a1)
{
  v1 = MEMORY[0x277CBEA80];
  v2 = a1;
  v3 = [v1 currentCalendar];
  v4 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  [v4 setMonth:-1];
  v5 = [v3 dateByAddingComponents:v4 toDate:v2 options:0];

  v6 = FHDateStartOfMonth(v5);

  return v6;
}

id FHDateStartOfMonth(void *a1)
{
  v1 = MEMORY[0x277CBEA80];
  v2 = a1;
  v3 = [v1 currentCalendar];
  v4 = [v3 components:14 fromDate:v2];

  v5 = [v3 dateFromComponents:v4];

  return v5;
}

id FHDateByAddingMonths(void *a1, uint64_t a2)
{
  v3 = MEMORY[0x277CBEA80];
  v4 = a1;
  v5 = [v3 currentCalendar];
  v6 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  [v6 setMonth:a2];
  v7 = [v5 dateByAddingComponents:v6 toDate:v4 options:0];

  return v7;
}

id FHDateByAddingWeeks(void *a1, uint64_t a2)
{
  v3 = MEMORY[0x277CBEA80];
  v4 = a1;
  v5 = [v3 currentCalendar];
  v6 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  [v6 setDay:7 * a2];
  v7 = [v5 dateByAddingComponents:v6 toDate:v4 options:0];

  return v7;
}

id FHDateEndOfMonth(void *a1)
{
  v1 = FHDateByAddingMonths(a1, 1);
  v2 = FHDateStartOfMonth(v1);
  v3 = [v2 dateByAddingTimeInterval:-1.0];

  return v3;
}

id FHDateEndOfWeekStartingOnMonday(void *a1)
{
  v1 = FHDateStartOfWeek(a1, 2);
  v2 = FHDateByAddingWeeks(v1, 1);

  v3 = [v2 dateByAddingTimeInterval:-1.0];

  return v3;
}

uint64_t FHIsDateBetweenDates(void *a1, void *a2, void *a3, unsigned int a4, unsigned int a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = v11;
  v13 = 0;
  if (v9 && v10 && v11)
  {
    v14 = a4 - 1;
    v15 = a5 - 1;
    v16 = [v10 compare:v9] == v14 || objc_msgSend(v10, "compare:", v9) == -1;
    v17 = [v12 compare:v9] == v15 || objc_msgSend(v12, "compare:", v9) == 1;
    v13 = v16 & v17;
  }

  return v13;
}

uint64_t FHNumberOfDaysBetweenDates(void *a1, void *a2, unsigned int a3)
{
  v3 = -1;
  if (a1 && a2)
  {
    v6 = MEMORY[0x277CBEA80];
    v7 = a2;
    v8 = a1;
    v9 = [v6 currentCalendar];
    v10 = [v9 components:16 fromDate:v8 toDate:v7 options:0];

    v3 = [v10 day] + a3;
  }

  return v3;
}

id FHShuffledArray(void *a1)
{
  v1 = a1;
  v2 = [v1 count];
  if (v2 < 2)
  {
    v6 = [v1 copy];
  }

  else
  {
    v3 = v2;
    v4 = [v1 mutableCopy];
    v5 = v3 - 1;
    do
    {
      [v4 exchangeObjectAtIndex:v5 withObjectAtIndex:arc4random() % v5];
      --v5;
    }

    while (v5);
    v6 = [v4 copy];
  }

  return v6;
}

uint64_t FHNumberOfDaysInMonthForDate(void *a1)
{
  v1 = MEMORY[0x277CBEA80];
  v2 = a1;
  v3 = [v1 currentCalendar];
  [v3 rangeOfUnit:16 inUnit:8 forDate:v2];
  v5 = v4;

  return v5;
}

uint64_t FHEqualObjects(void *a1, void *a2)
{
  if (a1 && a2)
  {
    return [a1 isEqual:a2];
  }

  else
  {
    return a1 == a2;
  }
}

uint64_t FHEqualStrings(void *a1, void *a2)
{
  if (a1 && a2)
  {
    return [a1 isEqualToString:a2];
  }

  else
  {
    return a1 == a2;
  }
}

void sub_226DF6240(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_226DF76EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t checkIfIncomeCandidate(uint64_t a1, uint64_t a2, void *a3, void *a4, unint64_t a5, void *a6, double a7)
{
  v13 = a3;
  v14 = a4;
  v15 = a6;
  if (a7 < 0.0 && a1 == 4 && a2 == 0)
  {
    v18 = 0;
    if (a5 <= 0x16 && ((1 << a5) & 0x6B0800) != 0)
    {
      v19 = FHProprietaryCodesMapping();
      v20 = [v19 objectForKey:@"proprietaryBankTransactionCode"];

      v21 = [v20 objectForKey:v13];
      if ([v21 containsObject:v14])
      {
        v18 = 0;
      }

      else
      {
        v18 = [v15 isEqualToString:@"GBP"];
      }
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

uint64_t FHPaymentRingSuggestionCategoryFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"MinimumRemainingPayment"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"LastPayment"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"LastPaymentPlusMerchantCategory1"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"LastPaymentPlusMerchantCategory2"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"NewPurchases"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"PayInNineMonths"])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:@"PayInEightMonths"])
  {
    v2 = 7;
  }

  else if ([v1 isEqualToString:@"PayInSevenMonths"])
  {
    v2 = 8;
  }

  else if ([v1 isEqualToString:@"PayInSixMonths"])
  {
    v2 = 9;
  }

  else if ([v1 isEqualToString:@"PayInFiveMonths"])
  {
    v2 = 10;
  }

  else if ([v1 isEqualToString:@"PayInFourMonths"])
  {
    v2 = 11;
  }

  else if ([v1 isEqualToString:@"PayInThreeMonths"])
  {
    v2 = 12;
  }

  else if ([v1 isEqualToString:@"PayInTwoMonths"])
  {
    v2 = 13;
  }

  else if ([v1 isEqualToString:@"PayInNineMonthsFromUtilization"])
  {
    v2 = 14;
  }

  else if ([v1 isEqualToString:@"PayInSixMonthsFromUtilization"])
  {
    v2 = 15;
  }

  else if ([v1 isEqualToString:@"PayInThreeMonthsFromUtilization"])
  {
    v2 = 16;
  }

  else if ([v1 isEqualToString:@"PayInPlanCompletion"])
  {
    v2 = 17;
  }

  else if ([v1 isEqualToString:@"RemainingStatementBalance"])
  {
    v2 = 18;
  }

  else if ([v1 isEqualToString:@"CurrentBalance"])
  {
    v2 = 19;
  }

  else if ([v1 isEqualToString:@"OneThirdOfCurrentBalance"])
  {
    v2 = 20;
  }

  else if ([v1 isEqualToString:@"OneSixthOfCurrentBalance"])
  {
    v2 = 21;
  }

  else if ([v1 isEqualToString:@"OneNinthOfCurrentBalance"])
  {
    v2 = 22;
  }

  else if ([v1 isEqualToString:@"PayInThreeMonthsForTransactor"])
  {
    v2 = 23;
  }

  else if ([v1 isEqualToString:@"PayInSixMonthsForTransactor"])
  {
    v2 = 24;
  }

  else if ([v1 isEqualToString:@"PayInNineMonthsForTransactor"])
  {
    v2 = 25;
  }

  else if ([v1 isEqualToString:@"OneThirdOfStatementBalance"])
  {
    v2 = 26;
  }

  else if ([v1 isEqualToString:@"OneSixthOfStatementBalance"])
  {
    v2 = 27;
  }

  else if ([v1 isEqualToString:@"OneNinthOfStatementBalance"])
  {
    v2 = 28;
  }

  else if ([v1 isEqualToString:@"AverageOfMinimumAndStatetmentBalance"])
  {
    v2 = 29;
  }

  else if ([v1 isEqualToString:@"CardBalance"])
  {
    v2 = 30;
  }

  else if ([v1 isEqualToString:@"CombinedBalance"])
  {
    v2 = 31;
  }

  else if ([v1 isEqualToString:@"FHSmartFeatureAggregateTypeAmountVeryExpensive"])
  {
    v2 = 32;
  }

  else if ([v1 isEqualToString:@"FHSmartFeatureAggregateTypeRecurring"])
  {
    v2 = 33;
  }

  else if ([v1 isEqualToString:@"FHSmartFeatureAggregateTypeTopMerchant"])
  {
    v2 = 34;
  }

  else if ([v1 isEqualToString:@"FHSmartFeatureCompoundTypeTripEvents"])
  {
    v2 = 35;
  }

  else if ([v1 isEqualToString:@"FHSmartFeatureAggregateTypePeakSpend"])
  {
    v2 = 36;
  }

  else if ([v1 isEqualToString:@"Count"])
  {
    v2 = 37;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *FHPaymentRingSuggestionCategoryToString(unint64_t a1)
{
  if (a1 > 0x25)
  {
    return @"unknown";
  }

  else
  {
    return off_2785CB688[a1];
  }
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_226DF9018(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_226DF9BD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id location)
{
  objc_destroyWeak((v34 + 56));
  _Block_object_dispose((v35 - 160), 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_226DFA95C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *FHRecurringPeerPaymentPeriodicCategoryTypeToString(uint64_t a1)
{
  v3 = @"unknown";
  if (a1 <= 3)
  {
    v4 = @"daily";
    v5 = @"weekly";
    if (a1 != 3)
    {
      v5 = @"unknown";
    }

    if (a1 != 2)
    {
      v4 = v5;
    }

    if (a1 == 1)
    {
      v3 = @"not supported";
    }

    else
    {
      v3 = v4;
    }

    return v3;
  }

  switch(a1)
  {
    case 4:
      v3 = @"biweekly";

      break;
    case 5:
      v3 = @"monthly";
      break;
    case 6:
      v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"FHRecurringPeerPaymentPeriodicCategoryTypeCount: %lu", 6];

      return v3;
    default:

      break;
  }

  return v3;
}

uint64_t FHRecurringPeerPaymentPeriodicCategoryTypeFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"unknown"])
  {
    v2 = 0;
  }

  else if ([v1 isEqualToString:@"not supported"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"daily"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"weekly"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"biweekly"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"monthly"])
  {
    v2 = 5;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_226E004B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_226E00A5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_226E00E54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t FHTransactionInternalStateFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"Unknown"])
  {
    v2 = 0;
  }

  else if ([v1 isEqualToString:@"Dirty"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"RawConsistent"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"UpdatedRealtime"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"UpdatedBatch"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"Consistent"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"Invalid"])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:@"RequiresRecomputation"])
  {
    v2 = 7;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *FHTransactionInternalStateToString(uint64_t a1)
{
  v3 = @"Unknown";
  if (a1 > 4)
  {
    if (a1 > 6)
    {
      if (a1 == 7)
      {
        v3 = @"RequiresRecomputation";
      }

      else
      {
        if (a1 == 8)
        {
          v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"FHTransactionInternalStateCount: %lu", 8];
        }
      }
    }

    else
    {
      v9 = @"Invalid";
      if (a1 != 6)
      {
        v9 = @"Unknown";
      }

      if (a1 == 5)
      {
        v3 = @"Consistent";
      }

      else
      {
        v3 = v9;
      }
    }
  }

  else
  {
    v4 = @"UpdatedRealtime";
    v5 = @"UpdatedBatch";
    if (a1 != 4)
    {
      v5 = @"Unknown";
    }

    if (a1 != 3)
    {
      v4 = v5;
    }

    v6 = @"Dirty";
    v7 = @"RawConsistent";
    if (a1 != 2)
    {
      v7 = @"Unknown";
    }

    if (a1 != 1)
    {
      v6 = v7;
    }

    if (a1 <= 2)
    {
      v3 = v6;
    }

    else
    {
      v3 = v4;
    }
  }

  return v3;
}

__CFString *FHTransactionAccountTypeToString(uint64_t a1)
{
  if ((a1 - 1) > 5)
  {
    return @"Unknown";
  }

  else
  {
    return off_2785CC518[a1 - 1];
  }
}

uint64_t FHTransactionAccountTypeFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"Unknown"])
  {
    v2 = 0;
  }

  else if ([v1 isEqualToString:@"PeerPayment"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"Broadway"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"Count"])
  {
    v2 = 6;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *FHTransactionPeerPaymentSubtypeToString(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_2785CC548[a1 - 1];
  }
}

uint64_t FHTransactionPeerPaymentSubtypeFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"Unknown"])
  {
    v2 = 0;
  }

  else if ([v1 isEqualToString:@"Send"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"Receive"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"Request"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"Count"])
  {
    v2 = 4;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

FHTransaction *TransactionFromPKPaymentTransaction(void *a1)
{
  v76 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = objc_alloc_init(FHTransaction);
  if (objc_opt_class())
  {
    v4 = v2;
    v5 = [v4 identifier];
    [(FHTransaction *)v3 setIdentifier:v5];

    v6 = [v4 serviceIdentifier];
    [(FHTransaction *)v3 setTransactionServiceIdentifier:v6];

    v7 = [v4 paymentHash];
    [(FHTransaction *)v3 setPaymentHash:v7];

    v8 = [v4 transactionSourceIdentifier];
    [(FHTransaction *)v3 setTransactionSourceIdentifier:v8];

    v9 = [v4 amount];
    [(FHTransaction *)v3 setAmount:v9];

    v10 = [v4 currencyCode];
    [(FHTransaction *)v3 setCurrencyCode:v10];

    v11 = [v4 transactionDate];
    [(FHTransaction *)v3 setTransactionDate:v11];

    v12 = [v4 transactionStatusChangedDate];
    [(FHTransaction *)v3 setTransactionStatusChangedDate:v12];

    -[FHTransaction setTransactionStatus:](v3, "setTransactionStatus:", [v4 transactionStatus]);
    -[FHTransaction setTransactionSource:](v3, "setTransactionSource:", [v4 transactionSource]);
    -[FHTransaction setCardType:](v3, "setCardType:", [v4 cardType]);
    -[FHTransaction setTransactionType:](v3, "setTransactionType:", [v4 transactionType]);
    v13 = [v4 accountType];
    if ((v13 - 1) >= 3)
    {
      v14 = 0;
    }

    else
    {
      v14 = v13;
    }

    [(FHTransaction *)v3 setAccountType:v14];
    v15 = [v4 altDSID];
    [(FHTransaction *)v3 setAltDSID:v15];

    v16 = [v4 receiptIdentifier];
    [(FHTransaction *)v3 setReceiptIdentifier:v16];

    v17 = [v4 associatedReceiptUniqueID];
    [(FHTransaction *)v3 setAssociatedReceiptUniqueID:v17];

    [(FHTransaction *)v3 setTransactionInternalState:0];
    v18 = [v4 timeZone];
    [(FHTransaction *)v3 setTimeZone:v18];

    v19 = [v4 merchant];
    v20 = [v19 uniqueIdentifier];
    [(FHTransaction *)v3 setMerchantUniqueIdentifier:v20];

    v21 = [v4 merchant];
    v22 = [v21 name];
    [(FHTransaction *)v3 setName:v22];

    v23 = [v4 merchant];
    v24 = [v23 rawName];
    [(FHTransaction *)v3 setRawName:v24];

    v25 = [v4 merchant];
    -[FHTransaction setIndustryCode:](v3, "setIndustryCode:", [v25 industryCode]);

    v26 = [v4 merchant];
    v27 = [v26 industryCategory];
    [(FHTransaction *)v3 setIndustryCategory:v27];

    v28 = [v4 merchant];
    v29 = [v28 displayName];
    [(FHTransaction *)v3 setDisplayName:v29];

    v30 = [v4 merchant];
    v31 = [v30 rawCountry];
    [(FHTransaction *)v3 setCountry:v31];

    -[FHTransaction setCategory:](v3, "setCategory:", [v4 effectiveTransactionCategory]);
    v32 = [v4 merchant];
    v33 = [v32 detailedCategory];
    [(FHTransaction *)v3 setMerchantDetailedCategory:v33];

    v34 = [v4 merchant];
    v35 = [v34 mapsMerchant];
    -[FHTransaction setMapsMerchantID:](v3, "setMapsMerchantID:", [v35 identifier]);

    v36 = [v4 merchant];
    v37 = [v36 mapsBrand];
    -[FHTransaction setMapsMerchantBrandID:](v3, "setMapsMerchantBrandID:", [v37 identifier]);

    v38 = [v4 merchant];
    v39 = [v38 mapsMerchant];
    -[FHTransaction setMapsMerchantResultProviderID:](v3, "setMapsMerchantResultProviderID:", [v39 resultProviderIdentifier]);

    v40 = [v4 merchant];
    v41 = [v40 mapsBrand];
    -[FHTransaction setMapsMerchantBrandResultProviderID:](v3, "setMapsMerchantBrandResultProviderID:", [v41 resultProviderIdentifier]);

    v42 = [v4 location];
    [(FHTransaction *)v3 setLocation:v42];

    if (!_os_feature_enabled_impl())
    {
      goto LABEL_19;
    }

    v43 = [(FHTransaction *)v3 location];
    if (!v43)
    {
      goto LABEL_9;
    }

    v41 = [(FHTransaction *)v3 location];
    [v41 coordinate];
    if (v44 != 0.0)
    {
      goto LABEL_17;
    }

    v1 = [(FHTransaction *)v3 location];
    [v1 coordinate];
    if (v45 == 0.0)
    {
LABEL_9:
      v46 = [(FHTransaction *)v3 country];
      if (v46)
      {
        v47 = v46;
        v48 = +[FHTransaction _allowedCountryNamesForMapsMerchant];
        v49 = [(FHTransaction *)v3 country];
        v50 = [v48 containsObject:v49];

        if (v43)
        {
        }

        if ((v50 & 1) == 0)
        {
          goto LABEL_19;
        }

        v51 = [v4 merchant];
        v52 = [v51 mapsMerchant];
        v53 = [v52 location];
        [(FHTransaction *)v3 setLocation:v53];

        v43 = FinHealthLogObject(@"FinHealthCore");
        if (!os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_18;
        }

        v41 = [(FHTransaction *)v3 location];
        v74 = 138412290;
        v75 = v41;
        _os_log_impl(&dword_226DD4000, v43, OS_LOG_TYPE_DEBUG, "FH_GEO_REVERSE_LOOKUP enabled, transaction.location is :%@", &v74, 0xCu);
LABEL_17:

LABEL_18:
        goto LABEL_19;
      }

      if (!v43)
      {
LABEL_19:
        v54 = [v4 merchant];
        v55 = [v54 mapsMerchant];
        v56 = [v55 postalAddress];

        v57 = [v56 street];
        [(FHTransaction *)v3 setStreet:v57];

        v58 = [v56 ISOCountryCode];
        [(FHTransaction *)v3 setCountryCode:v58];

        if ([(FHTransaction *)v3 transactionSource]== 1)
        {
          v59 = [v56 city];
          [(FHTransaction *)v3 setCity:v59];

          v60 = [v56 state];
          [(FHTransaction *)v3 setState:v60];

          v61 = [v56 postalCode];
          [(FHTransaction *)v3 setZip:v61];
        }

        else
        {
          v62 = [v4 merchant];
          v63 = [v62 city];
          [(FHTransaction *)v3 setCity:v63];

          v64 = [v4 merchant];
          v65 = [v64 state];
          [(FHTransaction *)v3 setState:v65];

          v61 = [v4 merchant];
          v66 = [v61 zip];
          [(FHTransaction *)v3 setZip:v66];
        }

        v67 = [v4 peerPaymentCounterpartHandle];
        [(FHTransaction *)v3 setPeerPaymentCounterpartHandle:v67];

        -[FHTransaction setPeerPaymentType:](v3, "setPeerPaymentType:", [v4 peerPaymentType]);
        v68 = [v4 peerPaymentMemo];
        [(FHTransaction *)v3 setTransactionDescription:v68];

        v69 = [v4 peerPaymentMemo];
        [(FHTransaction *)v3 setProcessedDescription:v69];

        -[FHTransaction setRecurring:](v3, "setRecurring:", [v4 isRecurring]);
        -[FHTransaction setDisputeType:](v3, "setDisputeType:", [v4 disputeType]);
        -[FHTransaction setDisputeStatus:](v3, "setDisputeStatus:", [v4 disputeStatus]);
        v70 = [v4 disputeOpenDate];
        [(FHTransaction *)v3 setDisputeOpenDate:v70];

        v71 = [v4 disputeLastUpdatedDate];
        [(FHTransaction *)v3 setDisputeLastUpdatedDate:v71];

        goto LABEL_23;
      }
    }

    goto LABEL_17;
  }

LABEL_23:

  v72 = *MEMORY[0x277D85DE8];

  return v3;
}

FHTransaction *TransactionFromArray(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(FHTransaction);
  v3 = [v1 intAtIndex:9];
  v4 = [objc_alloc(MEMORY[0x277CCA980]) initWithInteger:v3];
  v5 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:{objc_msgSend(v1, "unsignedIntAtIndex:", 12)}];
  v6 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:{objc_msgSend(v1, "unsignedIntAtIndex:", 14)}];
  v7 = [v1 stringAtIndex:1];
  [(FHTransaction *)v2 setIdentifier:v7];

  v8 = [v1 stringAtIndex:2];
  [(FHTransaction *)v2 setTransactionServiceIdentifier:v8];

  v9 = [v1 stringAtIndex:6];
  [(FHTransaction *)v2 setFinanceAccountIdentifier:v9];

  v10 = [v1 stringAtIndex:3];
  [(FHTransaction *)v2 setFinanceTransactionIdentifier:v10];

  v11 = [v1 stringAtIndex:4];
  [(FHTransaction *)v2 setFinanceTransactionSharedIdentifier:v11];

  -[FHTransaction setFinanceTransactionSource:](v2, "setFinanceTransactionSource:", [v1 intAtIndex:5]);
  v12 = [v1 stringAtIndex:7];
  [(FHTransaction *)v2 setPaymentHash:v12];

  v13 = [v1 stringAtIndex:8];
  [(FHTransaction *)v2 setTransactionSourceIdentifier:v13];

  v14 = [MEMORY[0x277CCA980] defaultDatabaseAmountMultiplier];
  v15 = [v4 decimalNumberByDividingBy:v14];
  [(FHTransaction *)v2 setAmount:v15];

  [(FHTransaction *)v2 setAmountFromDatabase:v3];
  v16 = [v1 stringAtIndex:10];
  [(FHTransaction *)v2 setCurrencyCode:v16];

  [(FHTransaction *)v2 setTransactionDate:v5];
  -[FHTransaction setTransactionStatus:](v2, "setTransactionStatus:", [v1 intAtIndex:13]);
  [(FHTransaction *)v2 setTransactionStatusChangedDate:v6];
  -[FHTransaction setTransactionSource:](v2, "setTransactionSource:", [v1 intAtIndex:15]);
  -[FHTransaction setCardType:](v2, "setCardType:", [v1 intAtIndex:16]);
  -[FHTransaction setTransactionType:](v2, "setTransactionType:", [v1 intAtIndex:17]);
  -[FHTransaction setAccountType:](v2, "setAccountType:", [v1 intAtIndex:18]);
  v17 = [v1 stringAtIndex:19];
  [(FHTransaction *)v2 setAltDSID:v17];

  v18 = [v1 stringAtIndex:20];
  [(FHTransaction *)v2 setReceiptIdentifier:v18];

  v19 = [v1 stringAtIndex:21];
  [(FHTransaction *)v2 setAssociatedReceiptUniqueID:v19];

  -[FHTransaction setTransactionInternalState:](v2, "setTransactionInternalState:", [v1 intAtIndex:22]);
  v20 = [v1 stringAtIndex:23];
  [(FHTransaction *)v2 setMerchantUniqueIdentifier:v20];

  -[FHTransaction setIndustryCode:](v2, "setIndustryCode:", [v1 intAtIndex:24]);
  v21 = [v1 stringAtIndex:25];
  [(FHTransaction *)v2 setName:v21];

  v22 = [v1 stringAtIndex:26];
  [(FHTransaction *)v2 setRawName:v22];

  -[FHTransaction setCategory:](v2, "setCategory:", [v1 intAtIndex:27]);
  v23 = [v1 stringAtIndex:28];
  [(FHTransaction *)v2 setMerchantDetailedCategory:v23];

  v24 = [v1 stringAtIndex:29];
  [(FHTransaction *)v2 setDisplayName:v24];

  v25 = [v1 stringAtIndex:30];
  [(FHTransaction *)v2 setStreet:v25];

  v26 = [v1 stringAtIndex:31];
  [(FHTransaction *)v2 setCity:v26];

  v27 = [v1 stringAtIndex:32];
  [(FHTransaction *)v2 setState:v27];

  v28 = [v1 stringAtIndex:33];
  [(FHTransaction *)v2 setZip:v28];

  v29 = [v1 stringAtIndex:34];
  [(FHTransaction *)v2 setCountryCode:v29];

  v30 = [v1 stringAtIndex:35];
  [(FHTransaction *)v2 setCountry:v30];

  v31 = [v1 stringAtIndex:36];
  -[FHTransaction setMapsMerchantID:](v2, "setMapsMerchantID:", [v31 longLongValue]);

  -[FHTransaction setMapsMerchantResultProviderID:](v2, "setMapsMerchantResultProviderID:", [v1 intAtIndex:37]);
  v32 = [v1 stringAtIndex:38];
  -[FHTransaction setMapsMerchantBrandID:](v2, "setMapsMerchantBrandID:", [v32 longLongValue]);

  -[FHTransaction setMapsMerchantBrandResultProviderID:](v2, "setMapsMerchantBrandResultProviderID:", [v1 intAtIndex:39]);
  v33 = [v1 stringAtIndex:46];
  [(FHTransaction *)v2 setPeerPaymentCounterpartHandle:v33];

  -[FHTransaction setPeerPaymentType:](v2, "setPeerPaymentType:", [v1 intAtIndex:47]);
  v34 = [v1 stringAtIndex:48];
  [(FHTransaction *)v2 setTransactionDescription:v34];

  v35 = [v1 stringAtIndex:49];
  [(FHTransaction *)v2 setProcessedDescription:v35];

  -[FHTransaction setRecurring:](v2, "setRecurring:", [v1 intAtIndex:50] != 0);
  v36 = [v1 stringAtIndex:53];
  [(FHTransaction *)v2 setProprietaryBankTransactionCode:v36];

  v37 = [v1 stringAtIndex:53];
  [(FHTransaction *)v2 setProprietaryBankTransactionIssuer:v37];

  v38 = [v1 objectAtIndex:40];
  [v38 doubleValue];
  v40 = v39;

  v41 = [v1 objectAtIndex:41];
  [v41 doubleValue];
  v43 = v42;

  v44 = [v1 objectAtIndex:43];
  [v44 doubleValue];
  v46 = v45;

  v47 = [v1 objectAtIndex:42];
  [v47 doubleValue];
  v49 = v48;

  v50 = CLLocationCoordinate2DMake(v40, v43);
  if ((v40 != 0.0 || v43 != 0.0) && CLLocationCoordinate2DIsValid(v50))
  {
    v51 = objc_alloc(MEMORY[0x277CE41F8]);
    v52 = [MEMORY[0x277CBEAA8] now];
    v53 = [v51 initWithCoordinate:v52 altitude:v50.latitude horizontalAccuracy:v50.longitude verticalAccuracy:0.0 timestamp:{v46, v49}];
    [(FHTransaction *)v2 setLocation:v53];
  }

  if ([v1 intAtIndex:11])
  {
    v54 = [MEMORY[0x277CBEBB0] timeZoneForSecondsFromGMT:{objc_msgSend(v1, "intAtIndex:", 11)}];
    [(FHTransaction *)v2 setTimeZone:v54];
  }

  -[FHTransaction setDisputeType:](v2, "setDisputeType:", [v1 intAtIndex:44]);
  -[FHTransaction setDisputeStatus:](v2, "setDisputeStatus:", [v1 intAtIndex:45]);
  v55 = [v1 unsignedIntAtIndex:51];
  v56 = [v1 unsignedIntAtIndex:52];
  if (v55 >= 1)
  {
    v57 = v56;
    if (v56 >= 1)
    {
      v58 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:v55];
      [(FHTransaction *)v2 setDisputeOpenDate:v58];

      v59 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:v57];
      [(FHTransaction *)v2 setDisputeLastUpdatedDate:v59];
    }
  }

  return v2;
}

void sub_226E1118C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_226E137C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t FHAccount.init(from:)(uint64_t a1)
{
  v2 = sub_226E632A0();
  v152 = *(v2 - 8);
  v153 = v2;
  v3 = *(v152 + 64);
  MEMORY[0x28223BE20](v2);
  v151 = &v145 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6858, &qword_226E688C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v149 = &v145 - v7;
  v8 = sub_226E62D70();
  v167 = *(v8 - 8);
  v168 = v8;
  v9 = *(v167 + 64);
  MEMORY[0x28223BE20](v8);
  v166 = &v145 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6860, &qword_226E68358);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v150 = &v145 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v165 = &v145 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v148 = &v145 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v164 = &v145 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v147 = &v145 - v22;
  MEMORY[0x28223BE20](v21);
  v163 = &v145 - v23;
  v24 = sub_226E62D40();
  v161 = *(v24 - 8);
  v162 = v24;
  v25 = v161[8];
  MEMORY[0x28223BE20](v24);
  v146 = &v145 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6868, &unk_226E68360);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v160 = &v145 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v159 = &v145 - v31;
  v32 = sub_226E62E80();
  v157 = *(v32 - 8);
  v158 = v32;
  v33 = *(v157 + 64);
  v34 = MEMORY[0x28223BE20](v32);
  v156 = &v145 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v155 = &v145 - v36;
  v37 = sub_226E62C50();
  v154 = *(v37 - 8);
  v38 = *(v154 + 64);
  v39 = MEMORY[0x28223BE20](v37);
  v41 = &v145 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v43 = &v145 - v42;
  v44 = sub_226E635C0();
  v45 = *(v44 - 8);
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v44);
  v48 = &v145 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_226E62E40();
  sub_226E635B0();
  (*(v45 + 8))(v48, v44);
  v50 = v49;
  v51 = sub_226E639B0();

  [v49 setAccountID_];

  v52 = v154;
  [v49 setSourceType_];
  sub_226E62DC0();
  (*(v52 + 32))(v41, v43, v37);
  v53 = (*(v52 + 88))(v41, v37);
  v54 = 0;
  if (v53 != *MEMORY[0x277CC6B50])
  {
    if (v53 == *MEMORY[0x277CC6B58])
    {
      v54 = 1;
    }

    else
    {
      (*(v52 + 8))(v41, v37, 0);
      v54 = -1;
    }
  }

  [v49 setAccountCategory_];
  v55 = v155;
  sub_226E62DB0();
  v57 = v156;
  v56 = v157;
  v58 = v55;
  v59 = v158;
  (*(v157 + 32))(v156, v58, v158);
  v60 = (*(v56 + 88))(v57, v59);
  v61 = v162;
  v62 = v160;
  if (v60 == *MEMORY[0x277CC7158])
  {
    v63 = 4;
    v64 = v161;
  }

  else
  {
    v64 = v161;
    if (v60 == *MEMORY[0x277CC7170])
    {
      v63 = 2;
    }

    else if (v60 == *MEMORY[0x277CC7178])
    {
      v63 = 1;
    }

    else if (v60 == *MEMORY[0x277CC7168])
    {
      v63 = 3;
    }

    else if (v60 == *MEMORY[0x277CC7160])
    {
      v63 = 5;
    }

    else
    {
      (*(v56 + 8))(v57, v59);
      v63 = 0;
    }
  }

  [v50 setAccountType_];
  sub_226E62E10();
  v65 = sub_226E639B0();

  [v50 setAccountDescription_];

  v66 = v159;
  sub_226E62DE0();
  v67 = v64[6];
  v68 = v67(v66, 1, v61);
  sub_226E15E98(v66, &qword_27D7B6868, &unk_226E68360);
  if (v68 == 1)
  {
    v69 = -1;
    v71 = v167;
    v70 = v168;
  }

  else
  {
    sub_226E62DE0();
    result = v67(v62, 1, v61);
    if (result == 1)
    {
      __break(1u);
      return result;
    }

    v73 = v146;
    (v64[2])(v146, v62, v61);
    v74 = (v64[11])(v73, v61);
    v71 = v167;
    v70 = v168;
    if (v74 == *MEMORY[0x277CC6D40])
    {
      v69 = 0;
    }

    else if (v74 == *MEMORY[0x277CC6D48])
    {
      v69 = 1;
    }

    else if (v74 == *MEMORY[0x277CC6D58])
    {
      v69 = 2;
    }

    else if (v74 == *MEMORY[0x277CC6D50])
    {
      v69 = 3;
    }

    else
    {
      (v64[1])(v73, v61);
      v69 = -1;
    }

    (v64[1])(v62, v61);
  }

  [v50 setAccountStatus_];
  sub_226E62E50();
  v75 = sub_226E639B0();

  [v50 setCurrency_];

  v76 = v163;
  sub_226E62DD0();
  v77 = v76;
  v78 = v147;
  sub_226E15E28(v77, v147);
  v79 = v71 + 48;
  v80 = *(v71 + 48);
  v81 = v80(v78, 1, v70);
  v161 = v50;
  v162 = a1;
  if (v81 == 1)
  {
    v82 = 0;
  }

  else
  {
    v83 = v166;
    (*(v71 + 32))(v166, v78, v70);
    v84 = sub_226E62D60();
    v85 = v84;
    v87 = v86;
    v89 = v88;
    v90 = v71 + 48;
    v91 = HIDWORD(v84);
    v92 = v80;
    v93 = HIWORD(v84);
    v94 = v86 >> 16;
    v159 = HIDWORD(v86);
    v160 = HIWORD(v86);
    v95 = HIWORD(v88);
    v96 = objc_allocWithZone(MEMORY[0x277CCA980]);
    v169 = v85;
    v170 = v91;
    v79 = v90;
    v171 = v93;
    v80 = v92;
    v172 = v87;
    v173 = v94;
    v71 = v167;
    v70 = v168;
    v174 = v159;
    v175 = v160;
    v176 = v89;
    v177 = v95;
    v50 = v161;
    a1 = v162;
    v82 = [v96 initWithDecimal_];
    (*(v71 + 8))(v83, v70);
  }

  v97 = v149;
  sub_226E15E98(v163, &qword_27D7B6860, &qword_226E68358);
  [v50 setCreditLimit_];

  sub_226E62E00();
  v98 = sub_226E63590();
  v99 = *(v98 - 8);
  v100 = 0;
  if ((*(v99 + 48))(v97, 1, v98) != 1)
  {
    v100 = sub_226E63530();
    (*(v99 + 8))(v97, v98);
  }

  [v50 setNextPaymentDate_];

  v101 = v164;
  sub_226E62E20();
  v102 = v101;
  v103 = v148;
  sub_226E15E28(v102, v148);
  if (v80(v103, 1, v70) == 1)
  {
    v104 = 0;
  }

  else
  {
    v105 = v166;
    (*(v71 + 32))(v166, v103, v70);
    v106 = sub_226E62D60();
    v107 = v106;
    v109 = v108;
    v111 = v110;
    v112 = HIDWORD(v106);
    v113 = HIWORD(v106);
    v114 = v108 >> 16;
    v115 = HIDWORD(v108);
    v163 = v79;
    v116 = HIWORD(v108);
    v160 = v80;
    v117 = HIWORD(v110);
    v118 = objc_allocWithZone(MEMORY[0x277CCA980]);
    v169 = v107;
    v170 = v112;
    v171 = v113;
    v71 = v167;
    v70 = v168;
    v172 = v109;
    v173 = v114;
    v174 = v115;
    v50 = v161;
    a1 = v162;
    v175 = v116;
    v176 = v111;
    v177 = v117;
    v80 = v160;
    v104 = [v118 initWithDecimal_];
    (*(v71 + 8))(v105, v70);
  }

  sub_226E15E98(v164, &qword_27D7B6860, &qword_226E68358);
  [v50 setMinimumPaymentAmount_];

  v119 = v165;
  sub_226E62E30();
  v120 = v119;
  v121 = v150;
  sub_226E15E28(v120, v150);
  if (v80(v121, 1, v70) == 1)
  {
    v122 = 0;
  }

  else
  {
    (*(v71 + 32))(v166, v121, v70);
    v123 = sub_226E62D60();
    v124 = v123;
    v126 = v125;
    v128 = v127;
    v129 = HIDWORD(v123);
    v130 = HIWORD(v123);
    v131 = v125 >> 16;
    v132 = HIDWORD(v125);
    v133 = HIWORD(v125);
    v134 = HIWORD(v127);
    v135 = objc_allocWithZone(MEMORY[0x277CCA980]);
    v169 = v124;
    v170 = v129;
    v171 = v130;
    v172 = v126;
    v173 = v131;
    v174 = v132;
    v50 = v161;
    a1 = v162;
    v175 = v133;
    v176 = v128;
    v177 = v134;
    v122 = [v135 initWithDecimal_];
    (*(v71 + 8))(v166, v168);
  }

  sub_226E15E98(v165, &qword_27D7B6860, &qword_226E68358);
  [v50 setOverduePaymentAmount_];

  sub_226E62DF0();
  v136 = sub_226E639B0();

  [v50 setInstitutionName_];

  v137 = v50;
  v138 = v151;
  sub_226E62D90();
  sub_226E63280();
  v139 = v153;
  v140 = *(v152 + 8);
  v140(v138, v153);
  v141 = sub_226E639B0();

  [v137 setInstitutionID_];

  sub_226E62D90();
  sub_226E63290();
  v140(v138, v139);
  v142 = sub_226E639B0();

  [v137 setUniqueAccountID_];

  sub_226E62DA0();
  v143 = sub_226E639B0();

  [v137 setExternalAccountID_];

  [v137 setDpanSuffix_];
  [v137 setFpanSuffix_];
  [v137 setVirtualCardSuffix_];

  v144 = sub_226E62E60();
  (*(*(v144 - 8) + 8))(a1, v144);
  return v137;
}

uint64_t FHAccount.FHAccountCategory(from:)(uint64_t a1)
{
  v2 = sub_226E62C50();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20]();
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  result = 0;
  if (v7 != *MEMORY[0x277CC6B50])
  {
    if (v7 == *MEMORY[0x277CC6B58])
    {
      return 1;
    }

    else
    {
      (*(v3 + 8))(v6, v2);
      return -1;
    }
  }

  return result;
}

uint64_t FHAccount.FHAccountType(from:)(uint64_t a1)
{
  v2 = sub_226E62E80();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20]();
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x277CC7158])
  {
    return 4;
  }

  if (v7 == *MEMORY[0x277CC7170])
  {
    return 2;
  }

  if (v7 == *MEMORY[0x277CC7178])
  {
    return 1;
  }

  if (v7 == *MEMORY[0x277CC7168])
  {
    return 3;
  }

  if (v7 == *MEMORY[0x277CC7160])
  {
    return 5;
  }

  (*(v3 + 8))(v6, v2);
  return 0;
}

uint64_t FHAccount.FHAccountStatus(from:)(uint64_t a1)
{
  v2 = sub_226E62D40();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20]();
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  result = 0;
  if (v7 != *MEMORY[0x277CC6D40])
  {
    if (v7 == *MEMORY[0x277CC6D48])
    {
      return 1;
    }

    else if (v7 == *MEMORY[0x277CC6D58])
    {
      return 2;
    }

    else if (v7 == *MEMORY[0x277CC6D50])
    {
      return 3;
    }

    else
    {
      (*(v3 + 8))(v6, v2);
      return -1;
    }
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_226E15E28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6860, &qword_226E68358);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226E15E98(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_226E15EF8()
{
  type metadata accessor for TaskCollectionRegistry();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  result = sub_226E199E0(MEMORY[0x277D84F90]);
  *(v0 + 112) = result;
  qword_27D7B6D98 = v0;
  return result;
}

uint64_t *sub_226E15F44()
{
  if (qword_27D7B6D90 != -1)
  {
    swift_once();
  }

  return &qword_27D7B6D98;
}

uint64_t static TaskCollectionRegistry.shared.getter()
{
  if (qword_27D7B6D90 != -1)
  {
    swift_once();
  }
}

uint64_t sub_226E15FFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  swift_beginAccess();

  v9 = *(v4 + 112);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v4 + 112);
  *(v4 + 112) = 0x8000000000000000;
  sub_226E192BC(&unk_226E68378, v8, a1, isUniquelyReferenced_nonNull_native);
  *(v4 + 112) = v12;
  return swift_endAccess();
}

uint64_t sub_226E160C8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E1A614;

  return v6();
}

void *sub_226E161B0(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 112);
  if (*(v3 + 16))
  {

    v4 = sub_226E18C8C(a1);
    if (v5)
    {
      v7 = *(*(v3 + 56) + 16 * v4);

      *(swift_allocObject() + 16) = v7;
      return &unk_226E68388;
    }
  }

  return 0;
}

uint64_t sub_226E16270(int *a1)
{
  v5 = (a1 + *a1);
  v2 = a1[1];
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226E1A614;

  return v5();
}

uint64_t TaskCollectionRegistry.deinit()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t TaskCollectionRegistry.__deallocating_deinit()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t static Task<>.setTimeoutWithTaskGroup<A>(timeoutInterval:task:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  *(v5 + 40) = a3;
  *(v5 + 48) = a4;
  *(v5 + 32) = a2;
  *(v5 + 24) = a5;
  *(v5 + 16) = a1;
  return MEMORY[0x2822009F8](sub_226E163FC, 0, 0);
}

uint64_t sub_226E163FC()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = *(v0 + 32);
  *(v3 + 16) = v1;
  *(v3 + 24) = v4;
  *(v3 + 40) = v2;
  v5 = *(MEMORY[0x277D859B8] + 4);
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  *v6 = v0;
  v6[1] = sub_226E164F8;
  v7 = *(v0 + 16);
  v10 = *(v0 + 48);

  return MEMORY[0x282200740](v7);
}

uint64_t sub_226E164F8()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_226E16634, 0, 0);
  }

  else
  {
    v4 = v3[7];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_226E16634()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_226E16698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  *(v6 + 56) = a5;
  *(v6 + 48) = a6;
  *(v6 + 32) = a3;
  *(v6 + 40) = a4;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = sub_226E63D80();
  *(v6 + 64) = v7;
  v8 = *(v7 - 8);
  *(v6 + 72) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6870, &qword_226E683B0) - 8) + 64) + 15;
  *(v6 + 96) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226E167AC, 0, 0);
}

uint64_t sub_226E167AC()
{
  v1 = v0[12];
  v2 = v0[7];
  v3 = v0[6];
  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[3];
  v7 = sub_226E63B80();
  v8 = *(*(v7 - 8) + 56);
  v8(v1, 1, 1, v7);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v2;
  v9[5] = v5;
  v9[6] = v4;

  v0[13] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7B6878, &qword_226E68920);
  v10 = sub_226E63C10();
  sub_226E16E40(v1, &unk_226E68588, v9, v10);
  sub_226E1A268(v1);
  v8(v1, 1, 1, v7);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v2;
  v11[5] = v3;
  sub_226E16E40(v1, &unk_226E68598, v11, v10);
  sub_226E1A268(v1);
  v12 = *(MEMORY[0x277D85818] + 4);
  v13 = swift_task_alloc();
  v0[14] = v13;
  *v13 = v0;
  v13[1] = sub_226E169C0;
  v14 = v0[11];
  v15 = v0[3];

  return MEMORY[0x2822004D0](v14, 0, 0, v10);
}

uint64_t sub_226E169C0()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_226E16CC8;
  }

  else
  {
    v3 = sub_226E16AD4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_226E16AD4()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  v6 = *(v0 + 56);
  v7 = **(v0 + 24);
  sub_226E63C00();
  (*(v5 + 16))(v2, v3, v4);
  v8 = *(v6 - 8);
  v9 = (*(v8 + 48))(v2, 1, v6);
  v10 = *(v5 + 8);
  if (v9 == 1)
  {
    v11 = *(v0 + 88);
    v12 = *(v0 + 64);
    v10(*(v0 + 80), v12);
    sub_226E19F54();
    swift_allocError();
    *v13 = 4;
    swift_willThrow();
    v10(v11, v12);
    v15 = *(v0 + 88);
    v14 = *(v0 + 96);
    v16 = *(v0 + 80);
  }

  else
  {
    v18 = *(v0 + 96);
    v19 = *(v0 + 80);
    v20 = *(v0 + 56);
    v21 = *(v0 + 16);
    v10(*(v0 + 88), *(v0 + 64));
    (*(v8 + 32))(v21, v19, v20);
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_226E16CC8()
{
  v1 = v0[15];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[10];

  v5 = v0[1];

  return v5();
}

uint64_t sub_226E16D48(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v9 = (a4 + *a4);
  v6 = a4[1];
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_226E1A614;

  return v9(a1);
}

uint64_t sub_226E16E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6870, &qword_226E683B0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = v22 - v10;
  sub_226E1A598(a1, v22 - v10, &qword_27D7B6870, &qword_226E683B0);
  v12 = sub_226E63B80();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_226E1A268(v11);
    if (*(a3 + 16))
    {
LABEL_3:
      v14 = *(a3 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v15 = sub_226E63B40();
      v17 = v16;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_226E63B70();
    (*(v13 + 8))(v11, v12);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v15 = 0;
  v17 = 0;
LABEL_6:
  v18 = *v5;
  v19 = *(a4 + 16);
  v20 = (v17 | v15);
  if (v17 | v15)
  {
    v23[0] = 0;
    v23[1] = 0;
    v20 = v23;
    v23[2] = v15;
    v23[3] = v17;
  }

  v22[1] = 1;
  v22[2] = v20;
  v22[3] = v18;
  swift_task_create();
}

uint64_t sub_226E17024(double a1)
{
  *(v1 + 16) = a1;
  v2 = sub_226E63F10();
  *(v1 + 24) = v2;
  v3 = *(v2 - 8);
  *(v1 + 32) = v3;
  v4 = *(v3 + 64) + 15;
  *(v1 + 40) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226E170E4, 0, 0);
}

uint64_t sub_226E170E4()
{
  v1 = v0[5];
  v2 = v0[2];
  v3 = sub_226E640F0();
  v5 = v4;
  sub_226E64040();
  v6 = swift_task_alloc();
  v0[6] = v6;
  *v6 = v0;
  v6[1] = sub_226E171C0;
  v7 = v0[5];

  return sub_226E18718(v3, v5, 0, 0, 1);
}

uint64_t sub_226E171C0()
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  v8 = *v1;
  *(*v1 + 56) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_226E173C8;
  }

  else
  {
    v6 = sub_226E17330;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_226E17330()
{
  sub_226E19F54();
  swift_allocError();
  *v1 = 3;
  swift_willThrow();
  v2 = *(v0 + 40);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_226E173C8()
{
  v1 = v0[7];
  v2 = v0[5];

  v3 = v0[1];

  return v3();
}

uint64_t static Task<>.setTimeout<A>(timeoutInterval:task:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  *(v5 + 40) = a3;
  *(v5 + 48) = a4;
  *(v5 + 32) = a2;
  *(v5 + 24) = a5;
  *(v5 + 16) = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6870, &qword_226E683B0) - 8) + 64) + 15;
  *(v5 + 56) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226E174D4, 0, 0);
}

uint64_t sub_226E174D4()
{
  v1 = v0[6];
  v2 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[3];
  v6 = sub_226E63B80();
  v7 = *(*(v6 - 8) + 56);
  v7(v2, 1, 1, v6);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v1;
  v8[5] = v4;
  v8[6] = v3;

  v0[8] = sub_226E17D44(0, 0, v2, &unk_226E683C0, v8);
  v7(v2, 1, 1, v6);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v5;
  v10 = sub_226E18338(0, 0, v2, &unk_226E683D0, v9);
  v0[9] = v10;
  v11 = *(MEMORY[0x277D857E0] + 4);
  v12 = swift_task_alloc();
  v0[10] = v12;
  *v12 = v0;
  v12[1] = sub_226E176AC;
  v13 = MEMORY[0x277D839B0];

  return MEMORY[0x282200460](v0 + 13, v10, v13);
}

uint64_t sub_226E176AC()
{
  v1 = *(*v0 + 80);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_226E177A8, 0, 0);
}

uint64_t sub_226E177A8()
{
  if (*(v0 + 104))
  {
    v1 = *(v0 + 72);
    sub_226E63BA0();
    v2 = *(MEMORY[0x277D857C8] + 4);
    v3 = swift_task_alloc();
    *(v0 + 88) = v3;
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6878, &qword_226E68920);
    *v3 = v0;
    v3[1] = sub_226E17958;
    v5 = *(v0 + 64);
    v6 = *(v0 + 48);
    v7 = *(v0 + 16);
    v8 = MEMORY[0x277D84950];

    return MEMORY[0x282200430](v7, v5, v6, v4, v8);
  }

  else
  {
    v9 = *(v0 + 64);
    v10 = *(v0 + 72);
    v11 = *(v0 + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6878, &qword_226E68920);
    sub_226E63BA0();
    sub_226E19F54();
    swift_allocError();
    *v12 = 3;
    swift_willThrow();

    v13 = *(v0 + 56);

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_226E17958()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_226E17AE4;
  }

  else
  {
    v3 = sub_226E17A6C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_226E17A6C()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];

  v4 = v0[1];

  return v4();
}

uint64_t sub_226E17AE4()
{
  v2 = v0[8];
  v1 = v0[9];

  v3 = v0[12];
  v4 = v0[7];

  v5 = v0[1];

  return v5();
}

uint64_t sub_226E17B58(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v9 = (a4 + *a4);
  v6 = a4[1];
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_226E17C50;

  return v9(a1);
}

uint64_t sub_226E17C50()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_226E17D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6870, &qword_226E683B0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = &v25[-1] - v10;
  v26[0] = a4;
  v26[1] = a5;
  sub_226E1A598(a3, &v25[-1] - v10, &qword_27D7B6870, &qword_226E683B0);
  v12 = sub_226E63B80();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_226E1A268(v11);
  }

  else
  {
    sub_226E63B70();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_226E63B40();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_226E639E0();
      v21 = *(v20 + 16);
      sub_226E18BD0(v20 + 32, v26, v25);

      v22 = v25[0];
      sub_226E1A268(a3);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_226E1A268(a3);
  if (v19 | v17)
  {
    v25[1] = 0;
    v25[2] = 0;
    v25[3] = v17;
    v25[4] = v19;
  }

  return swift_task_create();
}

uint64_t sub_226E17F98(uint64_t a1, double a2)
{
  *(v2 + 24) = a2;
  *(v2 + 16) = a1;
  v3 = sub_226E63F10();
  *(v2 + 32) = v3;
  v4 = *(v3 - 8);
  *(v2 + 40) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226E1805C, 0, 0);
}

uint64_t sub_226E1805C()
{
  v1 = v0[6];
  v2 = v0[3];
  v3 = sub_226E640F0();
  v5 = v4;
  sub_226E64040();
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_226E18138;
  v7 = v0[6];

  return sub_226E18718(v3, v5, 0, 0, 1);
}

uint64_t sub_226E18138()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *v1;

  v5 = v2[6];
  v6 = v2[5];
  v7 = v2[4];
  if (v0)
  {

    (*(v6 + 8))(v5, v7);
    v8 = sub_226E1A634;
  }

  else
  {
    (*(v6 + 8))(v5, v7);
    v8 = sub_226E182D0;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_226E182D0()
{
  v1 = *(v0 + 48);
  **(v0 + 16) = 0;

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_226E18338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6870, &qword_226E683B0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = v26 - v10;
  sub_226E1A598(a3, v26 - v10, &qword_27D7B6870, &qword_226E683B0);
  v12 = sub_226E63B80();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_226E1A268(v11);
  }

  else
  {
    sub_226E63B70();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_226E63B40();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_226E639E0() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_226E1A268(a3);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_226E1A268(a3);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_226E18644()
{
  v1 = *v0;
  sub_226E640A0();
  MEMORY[0x22AA8D6A0](v1);
  return sub_226E640C0();
}

uint64_t sub_226E186D4()
{
  v1 = *v0;
  sub_226E640A0();
  MEMORY[0x22AA8D6A0](v1);
  return sub_226E640C0();
}

uint64_t sub_226E18718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_226E63F00();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_226E18818, 0, 0);
}

uint64_t sub_226E18818()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = sub_226E63F10();
  v7 = sub_226E1A550(&qword_27D7B6898, MEMORY[0x277D85928]);
  sub_226E64020();
  sub_226E1A550(&qword_27D7B68A0, MEMORY[0x277D858F8]);
  sub_226E63F20();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = *(MEMORY[0x277D85A58] + 4);
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_226E189A8;
  v11 = v0[11];
  v12 = v0[7];

  return MEMORY[0x2822008C8](v11, v0 + 2, v6, v7);
}

uint64_t sub_226E189A8()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 64);
  v7 = *v1;
  v7[15] = v0;

  v4(v5, v6);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_226E18B64, 0, 0);
  }

  else
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    return v10();
  }
}

uint64_t sub_226E18B64()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

uint64_t sub_226E18BD0@<X0>(uint64_t result@<X0>, uint64_t *a2@<X5>, uint64_t *a3@<X8>)
{
  if (result)
  {
    v4 = *a2;
    v5 = a2[1];

    result = swift_task_create();
    *a3 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_226E18C8C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_226E635C0();
  sub_226E1A550(&qword_280CEA228, MEMORY[0x277CC95F0]);
  v5 = sub_226E63980();

  return sub_226E18D24(a1, v5);
}

unint64_t sub_226E18D24(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_226E635C0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_226E1A550(&qword_27D7B68A8, MEMORY[0x277CC95F0]);
      v16 = sub_226E639A0();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

uint64_t sub_226E18EE4(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_226E635C0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20]();
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B68B0, &qword_226E685A0);
  v42 = a2;
  result = sub_226E63F60();
  v14 = result;
  if (*(v11 + 16))
  {
    v46 = v10;
    v47 = v6;
    v38 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v39 = (v7 + 16);
    v40 = v7;
    v43 = (v7 + 32);
    v21 = result + 64;
    v41 = v11;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v45 = *(v7 + 72);
      v28 = v27 + v45 * v26;
      if (v42)
      {
        (*v43)(v46, v28, v47);
        v44 = *(*(v11 + 56) + 16 * v26);
      }

      else
      {
        (*v39)(v46, v28, v47);
        v44 = *(*(v11 + 56) + 16 * v26);
      }

      v29 = *(v14 + 40);
      sub_226E1A550(&qword_280CEA228, MEMORY[0x277CC95F0]);
      result = sub_226E63980();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        v7 = v40;
        v11 = v41;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
      v7 = v40;
      v11 = v41;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v43)(*(v14 + 48) + v45 * v22, v46, v47);
      *(*(v14 + 56) + 16 * v22) = v44;
      ++*(v14 + 16);
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_226E192BC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v31 = a1;
  v9 = sub_226E635C0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20]();
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v4;
  v16 = sub_226E18C8C(a3);
  v17 = *(v14 + 16);
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = *(v14 + 24);
  if (v21 < v19 || (a4 & 1) == 0)
  {
    if (v21 >= v19 && (a4 & 1) == 0)
    {
      sub_226E19558();
      goto LABEL_9;
    }

    sub_226E18EE4(v19, a4 & 1);
    v22 = *v5;
    v23 = sub_226E18C8C(a3);
    if ((v20 & 1) == (v24 & 1))
    {
      v16 = v23;
      goto LABEL_9;
    }

LABEL_15:
    result = sub_226E64010();
    __break(1u);
    return result;
  }

LABEL_9:
  v25 = v31;
  v26 = *v5;
  if (v20)
  {
    v27 = (v26[7] + 16 * v16);
    v28 = v27[1];
    *v27 = v31;
    v27[1] = a2;
  }

  else
  {
    (*(v10 + 16))(v13, a3, v9);
    return sub_226E19498(v16, v13, v25, a2, v26);
  }
}

uint64_t sub_226E19498(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = sub_226E635C0();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = (a5[7] + 16 * a1);
  *v13 = a3;
  v13[1] = a4;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

void *sub_226E19558()
{
  v1 = v0;
  v31 = sub_226E635C0();
  v33 = *(v31 - 8);
  v2 = *(v33 + 64);
  MEMORY[0x28223BE20]();
  v30 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B68B0, &qword_226E685A0);
  v4 = *v0;
  v5 = sub_226E63F50();
  v6 = v5;
  if (*(v4 + 16))
  {
    v26 = v1;
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v4 + 16);
    v32 = v6;
    *(v6 + 16) = v10;
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 64);
    v14 = (v11 + 63) >> 6;
    v29 = v33 + 16;
    v27 = v4 + 64;
    for (i = v33 + 32; v13; result = )
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_14:
      v18 = v15 | (v9 << 6);
      v19 = v33;
      v20 = *(v33 + 72) * v18;
      v21 = v30;
      v22 = v31;
      (*(v33 + 16))(v30, *(v4 + 48) + v20, v31);
      v18 *= 16;
      v23 = v32;
      v24 = *(v32 + 48);
      v25 = *(v19 + 32);
      v34 = *(*(v4 + 56) + v18);
      v25(v24 + v20, v21, v22);
      *(*(v23 + 56) + v18) = v34;
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v26;
        v6 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_226E197D8(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_226E198CC;

  return v6(v2 + 32);
}

uint64_t sub_226E198CC()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

unint64_t sub_226E199E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B68B8, &qword_226E685A8);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B68B0, &qword_226E685A0);
    v8 = sub_226E63F70();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_226E1A598(v10, v6, &qword_27D7B68B8, &qword_226E685A8);
      result = sub_226E18C8C(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_226E635C0();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 16 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_226E19BC8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_226E1A614;

  return sub_226E160C8(a1, v5);
}

uint64_t sub_226E19C80()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_226E1A614;

  return sub_226E16270(v2);
}

uint64_t sub_226E19D2C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 2);
  v7 = *(v2 + 3);
  v8 = *(v2 + 4);
  v9 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_226E1A614;

  return sub_226E16698(a1, a2, v7, v8, v6, v9);
}

uint64_t sub_226E19E00(uint64_t a1)
{
  v5 = *(v1 + 40);
  v4 = *(v1 + 48);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_226E17C50;

  return sub_226E17B58(a1, v6, v7, v5);
}

uint64_t sub_226E19EAC(uint64_t a1)
{
  v4 = *(v1 + 32);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_226E17C50;

  return sub_226E17F98(a1, v4);
}

unint64_t sub_226E19F54()
{
  result = qword_27D7B6880;
  if (!qword_27D7B6880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B6880);
  }

  return result;
}

unint64_t sub_226E19FAC()
{
  result = qword_27D7B6888;
  if (!qword_27D7B6888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B6888);
  }

  return result;
}

unint64_t sub_226E1A004()
{
  result = qword_27D7B6890;
  if (!qword_27D7B6890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B6890);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FinHealthFeatureFlag.FinHealthFeatures(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FinHealthFeatureFlag.FinHealthFeatures(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_226E1A268(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6870, &qword_226E683B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_226E1A2D0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_226E1A614;

  return sub_226E197D8(a1, v5);
}

uint64_t objectdestroy_10Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_226E1A3C8(uint64_t a1)
{
  v5 = *(v1 + 40);
  v4 = *(v1 + 48);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_226E1A614;

  return sub_226E16D48(a1, v6, v7, v5);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_226E1A4BC()
{
  v2 = *(v0 + 40);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226E1A614;

  return sub_226E17024(v2);
}

uint64_t sub_226E1A550(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_226E1A598(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t EntityGroups.EntityGroup.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_226E635C0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t EntityGroups.EntityGroup.id.setter(uint64_t a1)
{
  v3 = sub_226E635C0();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t EntityGroups.EntityGroup.transactionIds.getter()
{
  v1 = *(v0 + *(type metadata accessor for EntityGroups.EntityGroup() + 20));
}

uint64_t type metadata accessor for EntityGroups.EntityGroup()
{
  result = qword_280CEA3A0;
  if (!qword_280CEA3A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t EntityGroups.EntityGroup.transactionIds.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EntityGroups.EntityGroup() + 20);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_226E1A858()
{
  if (*v0)
  {
    result = 0x746361736E617274;
  }

  else
  {
    result = 25705;
  }

  *v0;
  return result;
}

uint64_t sub_226E1A894@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_226E63FF0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746361736E617274 && a2 == 0xEE007364496E6F69)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_226E63FF0();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_226E1A988(uint64_t a1)
{
  v2 = sub_226E1AC4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_226E1A9C4(uint64_t a1)
{
  v2 = sub_226E1AC4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EntityGroups.EntityGroup.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B68C0, &qword_226E68608);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v12[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_226E1AC4C();
  sub_226E640E0();
  v14 = 0;
  sub_226E635C0();
  sub_226E23108(&qword_27D7B68C8);
  sub_226E63FB0();
  if (!v2)
  {
    v13 = *(v3 + *(type metadata accessor for EntityGroups.EntityGroup() + 20));
    v12[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B68D0, &qword_226E68610);
    sub_226E1B038(&qword_27D7B68D8, &qword_27D7B68C8);
    sub_226E63FB0();
  }

  return (*(v6 + 8))(v9, v5);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_226E1AC4C()
{
  result = qword_27D7B7020[0];
  if (!qword_27D7B7020[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7B7020);
  }

  return result;
}

uint64_t EntityGroups.EntityGroup.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v30 = sub_226E635C0();
  v27 = *(v30 - 8);
  v4 = *(v27 + 64);
  MEMORY[0x28223BE20]();
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B68E0, &unk_226E68618);
  v8 = *(v7 - 8);
  v28 = v7;
  v29 = v8;
  v9 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = &v24 - v10;
  v12 = type metadata accessor for EntityGroups.EntityGroup();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20]();
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_226E1AC4C();
  sub_226E640D0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v25 = v12;
  v17 = v15;
  v18 = v27;
  v33 = 0;
  sub_226E23108(&qword_27D7B68E8);
  v19 = v30;
  v20 = v28;
  sub_226E63FA0();
  v21 = *(v18 + 32);
  v24 = v17;
  v21(v17, v6, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B68D0, &qword_226E68610);
  v32 = 1;
  sub_226E1B038(&qword_27D7B68F0, &qword_27D7B68E8);
  sub_226E63FA0();
  (*(v29 + 8))(v11, v20);
  v22 = v24;
  *(v24 + *(v25 + 20)) = v31;
  sub_226E1B0C0(v22, v26);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return sub_226E1B124(v22);
}

uint64_t sub_226E1B038(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7B68D0, &qword_226E68610);
    sub_226E23108(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_226E1B0C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EntityGroups.EntityGroup();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226E1B124(uint64_t a1)
{
  v2 = type metadata accessor for EntityGroups.EntityGroup();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_226E1B180@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_226E635C0();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for EntityGroups.EntityGroup();
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t sub_226E1B22C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B68F8, &unk_226E695F0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_226E685C0;
  v10 = sub_226E639C0();
  v14 = v1;
  MEMORY[0x22AA8D010](46, 0xE100000000000000);
  v2 = sub_226E639C0();
  MEMORY[0x22AA8D010](v2);

  *(v0 + 32) = v10;
  *(v0 + 40) = v14;
  v11 = sub_226E639C0();
  v15 = v3;
  MEMORY[0x22AA8D010](46, 0xE100000000000000);
  v4 = sub_226E639C0();
  MEMORY[0x22AA8D010](v4);

  *(v0 + 48) = v11;
  *(v0 + 56) = v15;
  v12 = sub_226E639C0();
  v16 = v5;
  MEMORY[0x22AA8D010](46, 0xE100000000000000);
  v6 = sub_226E639C0();
  MEMORY[0x22AA8D010](v6);

  *(v0 + 64) = v12;
  *(v0 + 72) = v16;
  v13 = sub_226E639C0();
  v17 = v7;
  MEMORY[0x22AA8D010](46, 0xE100000000000000);
  v8 = sub_226E639C0();
  MEMORY[0x22AA8D010](v8);

  *(v0 + 80) = v13;
  *(v0 + 88) = v17;
  return v0;
}

void sub_226E1B3D4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6908, &unk_226E68A50);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_226E685D0;
  sub_226E639C0();
  MEMORY[0x22AA8D010](46, 0xE100000000000000);
  v1 = sub_226E639C0();
  MEMORY[0x22AA8D010](v1);

  sub_226E202A4(0, &qword_280CE9FA8, 0x277CCA980);
  v2 = sub_226E63CF0();
  v3 = objc_allocWithZone(FHSmartCompoundFeatureRankedValue);
  v4 = sub_226E639B0();

  v5 = [v3 initWithLabelAndRank:v4 featureRank:v2];

  if (v5)
  {
    *(v0 + 32) = v5;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_226E1B538()
{
  v1 = (*((*MEMORY[0x277D85000] & **(v0 + 16)) + 0x78))();
  *(v0 + 24) = v1;
  v2 = sub_226E62C40();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v5 = sub_226E62C30();
  *(v0 + 32) = v5;
  v6 = v5;
  v7 = *(v0 + 16);
  if (*(v1 + 16) <= 1uLL)
  {
    v8 = *(v1 + 16);
  }

  else
  {
    v8 = 1;
  }

  v9 = swift_task_alloc();
  *(v0 + 40) = v9;
  v9[2] = v1;
  v9[3] = v8;
  v9[4] = v7;
  v9[5] = v6;
  v10 = *(MEMORY[0x277D859B8] + 4);
  v11 = swift_task_alloc();
  *(v0 + 48) = v11;
  *v11 = v0;
  v11[1] = sub_226E1B6B4;

  return MEMORY[0x282200740]();
}

uint64_t sub_226E1B6B4()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v8 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = sub_226E1B840;
  }

  else
  {
    v5 = *(v2 + 40);
    v6 = *(v2 + 24);

    v4 = sub_226E1B7DC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_226E1B7DC()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_226E1B840()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];

  v4 = v0[1];
  v5 = v0[7];

  return v4();
}

uint64_t sub_226E1B8B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[20] = a5;
  v6[21] = a6;
  v6[18] = a3;
  v6[19] = a4;
  v6[17] = a2;
  v7 = *(type metadata accessor for EntityGroups.EntityGroup() - 8);
  v6[22] = v7;
  v6[23] = *(v7 + 64);
  v6[24] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6870, &qword_226E683B0) - 8) + 64) + 15;
  v6[25] = swift_task_alloc();
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6960, &qword_226E68810);
  v6[29] = v9;
  v10 = *(v9 - 8);
  v6[30] = v10;
  v11 = *(v10 + 64) + 15;
  v6[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226E1BA48, 0, 0);
}

uint64_t sub_226E1BA48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(v5 + 152);
  if (v6 < 0)
  {
    goto LABEL_23;
  }

  v7 = *(v5 + 184);
  if (!v6)
  {
    v14 = 0;
    v11 = v7 + 7;
LABEL_18:
    *(v5 + 256) = v11;
    v33 = *(v5 + 248);
    *(v5 + 264) = **(v5 + 136);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6878, &qword_226E68920);
    sub_226E63BD0();
    *(v5 + 272) = v14;
    v34 = *(MEMORY[0x277D85828] + 4);
    v35 = swift_task_alloc();
    *(v5 + 280) = v35;
    *v35 = v5;
    v35[1] = sub_226E1BE4C;
    v36 = *(v5 + 248);
    a4 = *(v5 + 232);
    a1 = v5 + 288;
    a5 = v5 + 128;
    a2 = 0;
    a3 = 0;

    return MEMORY[0x2822004E8](a1, a2, a3, a4, a5);
  }

  v8 = 0;
  v9 = 0;
  v39 = *(v5 + 176);
  v10 = *(*(v5 + 144) + 16);
  v11 = v7 + 7;
  v40 = v7 + 7;
  v38 = v10;
  while (1)
  {
    v14 = v10;
    if (v9 != v10)
    {
      break;
    }

LABEL_6:
    ++v8;
    v9 = v14;
    if (v8 == v6)
    {
      goto LABEL_18;
    }
  }

  if (v9 < v10)
  {
    if (__OFADD__(v9, 1))
    {
      goto LABEL_22;
    }

    v44 = v9 + 1;
    v15 = *(v5 + 224);
    v43 = *(v5 + 216);
    v16 = *(v5 + 192);
    v17 = *(v5 + 160);
    v41 = v15;
    v42 = *(v5 + 168);
    v18 = *(v39 + 80);
    v19 = *(v5 + 144) + ((v18 + 32) & ~v18) + *(v39 + 72) * v9;
    v20 = sub_226E63B80();
    v21 = *(v20 - 8);
    (*(v21 + 56))(v15, 1, 1, v20);
    sub_226E1B0C0(v19, v16);
    v22 = (v18 + 40) & ~v18;
    v23 = swift_allocObject();
    v23[2] = 0;
    v24 = v23 + 2;
    v23[3] = 0;
    v23[4] = v17;
    sub_226E202F8(v16, v23 + v22);
    *(v23 + ((v22 + v11) & 0xFFFFFFFFFFFFFFF8)) = v42;
    sub_226E2324C(v41, v43);
    v25 = (*(v21 + 48))(v43, 1, v20);
    v26 = v17;

    v27 = *(v5 + 216);
    if (v25 == 1)
    {
      sub_226E15E98(*(v5 + 216), &qword_27D7B6870, &qword_226E683B0);
      if (*v24)
      {
LABEL_12:
        v28 = v23[3];
        swift_getObjectType();
        swift_unknownObjectRetain();
        v29 = sub_226E63B40();
        v31 = v30;
        swift_unknownObjectRelease();
LABEL_15:
        v32 = **(v5 + 136);

        if (v31 | v29)
        {
          v12 = v5 + 16;
          *(v5 + 16) = 0;
          *(v5 + 24) = 0;
          *(v5 + 32) = v29;
          *(v5 + 40) = v31;
        }

        else
        {
          v12 = 0;
        }

        v11 = v40;
        v13 = *(v5 + 224);
        *(v5 + 80) = 1;
        *(v5 + 88) = v12;
        *(v5 + 96) = v32;
        swift_task_create();

        a1 = sub_226E15E98(v13, &qword_27D7B6870, &qword_226E683B0);
        v6 = *(v5 + 152);
        v14 = v44;
        v10 = v38;
        goto LABEL_6;
      }
    }

    else
    {
      sub_226E63B70();
      (*(v21 + 8))(v27, v20);
      if (*v24)
      {
        goto LABEL_12;
      }
    }

    v29 = 0;
    v31 = 0;
    goto LABEL_15;
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return MEMORY[0x2822004E8](a1, a2, a3, a4, a5);
}

uint64_t sub_226E1BE4C()
{
  v2 = *(*v1 + 280);
  v5 = *v1;

  if (v0)
  {
    v3 = sub_226E1C33C;
  }

  else
  {
    v3 = sub_226E1BF5C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_226E1BF5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((*(v5 + 288) & 1) == 0)
  {
    v13 = *(v5 + 272);
    v14 = *(v5 + 144);
    v15 = *(v14 + 16);
    if (v13 != v15)
    {
      if (v13 >= v15)
      {
        __break(1u);
        return MEMORY[0x2822004E8](a1, a2, a3, a4, a5);
      }

      v16 = *(v5 + 256);
      v17 = *(v5 + 208);
      v44 = *(v5 + 200);
      v18 = *(v5 + 192);
      v19 = *(v5 + 176);
      v42 = v17;
      v43 = *(v5 + 168);
      v20 = *(v5 + 160);
      v21 = *(v19 + 80);
      v22 = v14 + ((v21 + 32) & ~v21) + *(v19 + 72) * v13;
      v23 = sub_226E63B80();
      v24 = *(v23 - 8);
      (*(v24 + 56))(v17, 1, 1, v23);
      sub_226E1B0C0(v22, v18);
      v25 = (v21 + 40) & ~v21;
      v26 = swift_allocObject();
      v26[2] = 0;
      v27 = v26 + 2;
      v26[3] = 0;
      v26[4] = v20;
      sub_226E202F8(v18, v26 + v25);
      *(v26 + ((v25 + v16) & 0xFFFFFFFFFFFFFFF8)) = v43;
      sub_226E2324C(v42, v44);
      LODWORD(v16) = (*(v24 + 48))(v44, 1, v23);
      v28 = v20;

      v29 = *(v5 + 200);
      if (v16 == 1)
      {
        sub_226E15E98(*(v5 + 200), &qword_27D7B6870, &qword_226E683B0);
      }

      else
      {
        sub_226E63B70();
        (*(v24 + 8))(v29, v23);
      }

      v30 = v13 + 1;
      if (*v27)
      {
        v31 = v26[3];
        v32 = *v27;
        swift_getObjectType();
        swift_unknownObjectRetain();
        v33 = sub_226E63B40();
        v35 = v34;
        swift_unknownObjectRelease();
      }

      else
      {
        v33 = 0;
        v35 = 0;
      }

      if (v35 | v33)
      {
        v36 = v5 + 48;
        *(v5 + 48) = 0;
        *(v5 + 56) = 0;
        *(v5 + 64) = v33;
        *(v5 + 72) = v35;
      }

      else
      {
        v36 = 0;
      }

      v37 = *(v5 + 264);
      v38 = *(v5 + 208);
      *(v5 + 104) = 1;
      *(v5 + 112) = v36;
      *(v5 + 120) = v37;
      swift_task_create();

      sub_226E15E98(v38, &qword_27D7B6870, &qword_226E683B0);
      *(v5 + 272) = v30;
    }

    v39 = *(MEMORY[0x277D85828] + 4);
    v40 = swift_task_alloc();
    *(v5 + 280) = v40;
    *v40 = v5;
    v40[1] = sub_226E1BE4C;
    v41 = *(v5 + 248);
    a4 = *(v5 + 232);
    a1 = v5 + 288;
    a5 = v5 + 128;
    a2 = 0;
    a3 = 0;

    return MEMORY[0x2822004E8](a1, a2, a3, a4, a5);
  }

  v6 = *(v5 + 224);
  v8 = *(v5 + 208);
  v7 = *(v5 + 216);
  v10 = *(v5 + 192);
  v9 = *(v5 + 200);
  (*(*(v5 + 240) + 8))(*(v5 + 248), *(v5 + 232));

  v11 = *(v5 + 8);

  return v11();
}

uint64_t sub_226E1C33C()
{
  v1 = v0[28];
  v3 = v0[26];
  v2 = v0[27];
  v5 = v0[24];
  v4 = v0[25];
  (*(v0[30] + 8))(v0[31], v0[29]);
  v6 = v0[16];

  v7 = v0[1];

  return v7();
}

uint64_t sub_226E1C404(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v8 = v2[4];
  v7 = v2[5];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_226E1A614;

  return sub_226E1B8B8(v9, a2, v5, v6, v8, v7);
}

uint64_t sub_226E1C4C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_226E234EC;

  return sub_226E22398(a5, a6);
}

uint64_t sub_226E1C55C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_226E1C5F8;

  return sub_226E22398(a5, a6);
}

uint64_t sub_226E1C5F8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_226E1C6F0(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_226E638E0();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v5 = sub_226E635C0();
  v1[7] = v5;
  v6 = *(v5 - 8);
  v1[8] = v6;
  v7 = *(v6 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226E1C824, 0, 0);
}

uint64_t sub_226E1C824()
{
  v1 = v0[2];
  v2 = v1[2];
  v0[11] = v2;
  if (v2)
  {
    v0[12] = sub_226E62C40();
    v0[13] = 0;
    v3 = v0[10];
    v4 = v1[4];
    v0[14] = v4;
    v5 = v1[5];
    v0[15] = v5;

    v6 = sub_226E53234();
    asUUID(rawString:lossy:)(v4, v5, v6, v3);
    v0[16] = sub_226E62BE0();
    v7 = *(MEMORY[0x277CC6740] + 4);
    v8 = swift_task_alloc();
    v0[17] = v8;
    *v8 = v0;
    v8[1] = sub_226E1C980;
    v9 = v0[10];

    return MEMORY[0x282116E38](v9);
  }

  else
  {
    v11 = v0[9];
    v10 = v0[10];
    v13 = v0[5];
    v12 = v0[6];

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_226E1C980()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *(*v1 + 128);
  v8 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v5 = sub_226E1CE34;
  }

  else
  {
    v6 = *(v2 + 120);

    v5 = sub_226E1CAC0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_226E1CAC0()
{
  v48 = v0;
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[6];
  v6 = v0[3];
  v7 = v0[4];
  v8 = sub_226E56FC8();
  (*(v7 + 16))(v5, v8, v6);
  (*(v4 + 16))(v1, v2, v3);
  v9 = sub_226E638C0();
  v10 = sub_226E63C80();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[9];
  v13 = v0[10];
  v14 = v0[7];
  v15 = v0[8];
  v16 = v0[6];
  v18 = v0[3];
  v17 = v0[4];
  if (v11)
  {
    v46 = v0[6];
    v19 = swift_slowAlloc();
    v45 = v18;
    v20 = swift_slowAlloc();
    v47 = v20;
    *v19 = 136315138;
    sub_226E23108(&qword_27D7B6920);
    v43 = v10;
    v21 = sub_226E63FE0();
    v44 = v13;
    v23 = v22;
    v24 = *(v15 + 8);
    v24(v12, v14);
    v25 = sub_226E1FC98(v21, v23, &v47);

    *(v19 + 4) = v25;
    _os_log_impl(&dword_226DD4000, v9, v43, "Entity Group Deleted: %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x22AA8E1B0](v20, -1, -1);
    MEMORY[0x22AA8E1B0](v19, -1, -1);

    (*(v17 + 8))(v46, v45);
    v24(v44, v14);
  }

  else
  {

    v26 = *(v15 + 8);
    v26(v12, v14);
    (*(v17 + 8))(v16, v18);
    v26(v13, v14);
  }

  v27 = v0[13] + 1;
  if (v27 == v0[11])
  {
    v29 = v0[9];
    v28 = v0[10];
    v31 = v0[5];
    v30 = v0[6];

    v32 = v0[1];

    return v32();
  }

  else
  {
    v0[13] = v27;
    v34 = v0[12];
    v35 = v0[10];
    v36 = v0[2] + 16 * v27;
    v37 = *(v36 + 32);
    v0[14] = v37;
    v38 = *(v36 + 40);
    v0[15] = v38;

    v39 = sub_226E53234();
    asUUID(rawString:lossy:)(v37, v38, v39, v35);
    v0[16] = sub_226E62BE0();
    v40 = *(MEMORY[0x277CC6740] + 4);
    v41 = swift_task_alloc();
    v0[17] = v41;
    *v41 = v0;
    v41[1] = sub_226E1C980;
    v42 = v0[10];

    return MEMORY[0x282116E38](v42);
  }
}

uint64_t sub_226E1CE34()
{
  v44 = v0;
  v1 = v0[18];
  v2 = v0[15];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[3];
  (*(v0[8] + 8))(v0[10], v0[7]);
  v6 = sub_226E56FC8();
  (*(v4 + 16))(v3, v6, v5);

  v7 = v1;
  v8 = sub_226E638C0();
  v9 = sub_226E63CA0();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[18];
  v12 = v0[15];
  if (v10)
  {
    v13 = v0[14];
    v14 = v0[4];
    v41 = v0[3];
    v42 = v0[5];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v43 = v17;
    *v15 = 138412546;
    v18 = v11;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 4) = v19;
    *v16 = v19;
    *(v15 + 12) = 2080;
    v20 = sub_226E1FC98(v13, v12, &v43);

    *(v15 + 14) = v20;
    _os_log_impl(&dword_226DD4000, v8, v9, "Error: %@ when deleting entity group: %s", v15, 0x16u);
    sub_226E15E98(v16, &qword_27D7B6918, &qword_226E68950);
    MEMORY[0x22AA8E1B0](v16, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    MEMORY[0x22AA8E1B0](v17, -1, -1);
    MEMORY[0x22AA8E1B0](v15, -1, -1);

    (*(v14 + 8))(v42, v41);
  }

  else
  {
    v22 = v0[4];
    v21 = v0[5];
    v23 = v0[3];
    v24 = v0[15];

    (*(v22 + 8))(v21, v23);
  }

  v25 = v0[13] + 1;
  if (v25 == v0[11])
  {
    v27 = v0[9];
    v26 = v0[10];
    v29 = v0[5];
    v28 = v0[6];

    v30 = v0[1];

    return v30();
  }

  else
  {
    v0[13] = v25;
    v32 = v0[12];
    v33 = v0[10];
    v34 = v0[2] + 16 * v25;
    v35 = *(v34 + 32);
    v0[14] = v35;
    v36 = *(v34 + 40);
    v0[15] = v36;

    v37 = sub_226E53234();
    asUUID(rawString:lossy:)(v35, v36, v37, v33);
    v0[16] = sub_226E62BE0();
    v38 = *(MEMORY[0x277CC6740] + 4);
    v39 = swift_task_alloc();
    v0[17] = v39;
    *v39 = v0;
    v39[1] = sub_226E1C980;
    v40 = v0[10];

    return MEMORY[0x282116E38](v40);
  }
}

void sub_226E1D1A4()
{
  v56 = sub_226E638E0();
  v55 = *(v56 - 1);
  v1 = v55[8];
  MEMORY[0x28223BE20](v56);
  v3 = &v53 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for EntityGroups.EntityGroup();
  v59 = *(v57 - 8);
  v4 = *(v59 + 64);
  v5 = MEMORY[0x28223BE20](v57);
  v58 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (*((*MEMORY[0x277D85000] & *v0) + 0x80))(v5);
  v8 = swift_allocObject();
  v61 = v8;
  *(v8 + 16) = MEMORY[0x277D84F90];
  v60 = (v8 + 16);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  v10 = (v9 + 16);
  v63 = v9;
  *(v9 + 24) = 0;
  v11 = swift_allocObject();
  v62 = v11;
  *(v11 + 16) = MEMORY[0x277D84FA0];
  v12 = v11 + 16;
  v13 = objc_opt_self();
  v68 = sub_226E1D928;
  v69 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v65 = 1107296256;
  v66 = sub_226E23500;
  v67 = &block_descriptor;
  v14 = _Block_copy(&aBlock);
  v15 = @"fh_grouping";
  v16 = [v13 initWithBuilder_];
  _Block_release(v14);
  v17 = [objc_allocWithZone(FHDatabaseEntity) initWithEntity:v15 joinClause:v16];

  if (!v17)
  {

    v46 = sub_226E56FC8();
    v47 = v55;
    v48 = v56;
    (v55[2])(v3, v46, v56);
    v49 = sub_226E638C0();
    v50 = sub_226E63CA0();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_226DD4000, v49, v50, "Grouping table does not exist - Write back aborted", v51, 2u);
      MEMORY[0x22AA8E1B0](v51, -1, -1);
    }

    (v47[1])(v3, v48);
    v30 = v61;
    goto LABEL_13;
  }

  v55 = v7;
  v54 = v12;
  v56 = v17;
  v18 = objc_opt_self();
  v68 = sub_226E1D96C;
  v69 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v65 = 1107296256;
  v66 = sub_226E23500;
  v67 = &block_descriptor_13;
  v19 = _Block_copy(&aBlock);
  v20 = [v18 initWithBuilder:v19 logicalOperator:@"AND"];
  _Block_release(v19);
  if (v20)
  {
    v21 = *(v0 + OBJC_IVAR____TtC13FinHealthCore12EntityGroups_fields);
    v22 = @"AND";
    v23 = v20;
    v24 = sub_226E63AE0();
    v25 = *(v0 + OBJC_IVAR____TtC13FinHealthCore12EntityGroups_orderBy);
    sub_226E202A4(0, &qword_280CE9F98, off_2785CA820);
    v26 = sub_226E63AE0();
    v27 = swift_allocObject();
    v29 = v62;
    v28 = v63;
    v27[2] = v63;
    v27[3] = v29;
    v30 = v61;
    v31 = v55;
    v27[4] = v61;
    v27[5] = v31;
    v68 = sub_226E202EC;
    v69 = v27;
    aBlock = MEMORY[0x277D85DD0];
    v65 = 1107296256;
    v66 = sub_226E1EB4C;
    v67 = &block_descriptor_19;
    v32 = _Block_copy(&aBlock);

    v33 = v56;
    [v56 queryDataWithBlock:v23 logicalOperator:v22 limit:-1 selectFields:v24 orderby:v26 usingBlock:v32];
    _Block_release(v32);
    v55 = v23;

    swift_beginAccess();
    v34 = *(v28 + 24);
    v35 = v60;
    if (v34)
    {
      v36 = *v10;
      v37 = *(v28 + 24);

      v38 = sub_226E53234();
      v39 = v58;
      asUUID(rawString:lossy:)(v36, v34, v38, v58);

      v40 = v54;
      swift_beginAccess();
      *(v39 + *(v57 + 20)) = *v40;
      swift_beginAccess();
      v41 = *v35;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v35 = v41;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v41 = sub_226E1F9B0(0, v41[2] + 1, 1, v41, &qword_27D7B6938, &qword_226E68808, type metadata accessor for EntityGroups.EntityGroup);
        *v35 = v41;
      }

      v43 = v59;
      v45 = v41[2];
      v44 = v41[3];
      if (v45 >= v44 >> 1)
      {
        v41 = sub_226E1F9B0(v44 > 1, v45 + 1, 1, v41, &qword_27D7B6938, &qword_226E68808, type metadata accessor for EntityGroups.EntityGroup);
      }

      v41[2] = v45 + 1;
      sub_226E202F8(v39, v41 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v45);
      *v35 = v41;
      swift_endAccess();
    }

    swift_beginAccess();
LABEL_13:
    v52 = *(v30 + 16);

    return;
  }

  __break(1u);
}

id sub_226E1D928(id result)
{
  if (result)
  {
    return [result addKeyPairsWithJoinType:@"inner" leftEntity:@"fh_grouping" rightEntity:@"transactions" joinKey:@"t_identifier"];
  }

  return result;
}

void sub_226E1D96C(void *a1)
{
  if (a1)
  {
    sub_226E639C0();
    v2 = a1;
    v3 = @"!=";

    MEMORY[0x22AA8D010](0x745F70756F72672ELL, 0xEB00000000657079);

    v4 = sub_226E639B0();

    [v2 addIntegerClause:v3 fieldName:v4 expression:0];

    sub_226E639C0();
    v5 = v3;

    MEMORY[0x22AA8D010](0x745F70756F72672ELL, 0xEB00000000657079);

    v6 = sub_226E639B0();

    [v2 addIntegerClause:v5 fieldName:v6 expression:7];
  }
}

void sub_226E1DAE8(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_226E1DB54(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5)
{
  v126 = a5;
  v125 = a4;
  v130 = a3;
  v7 = sub_226E638E0();
  v133 = *(v7 - 8);
  v134 = v7;
  v8 = *(v133 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v116 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v128 = &v116 - v13;
  MEMORY[0x28223BE20](v12);
  v129 = &v116 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6940, &qword_226E68A90);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = &v116 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v116 - v20;
  v22 = sub_226E635C0();
  v135 = *(v22 - 8);
  v136 = v22;
  v23 = *(v135 + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v132 = (&v116 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v116 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v116 - v30;
  v32 = MEMORY[0x28223BE20](v29);
  v34 = &v116 - v33;
  v35 = MEMORY[0x28223BE20](v32);
  v127 = &v116 - v36;
  MEMORY[0x28223BE20](v35);
  v131 = &v116 - v37;
  v38 = type metadata accessor for EntityGroups.EntityGroup();
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38);
  v42 = (&v116 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1 && *(a1 + 16) == 4)
  {
    v116 = v40;
    sub_226E2233C(a1 + 32, v139);
    if (swift_dynamicCast())
    {
      v43 = v138;
      v119 = v137;
    }

    else
    {
      v119 = 0;
      v43 = 0xE000000000000000;
    }

    v122 = v43;
    sub_226E2233C(a1 + 64, v139);
    if (swift_dynamicCast())
    {
      v51 = v138;
      v124 = v137;
    }

    else
    {
      v124 = 0;
      v51 = 0xE000000000000000;
    }

    v123 = v51;
    sub_226E2233C(a1 + 96, v139);
    if (swift_dynamicCast())
    {
      v52 = v138;
      v117 = v137;
    }

    else
    {
      v117 = 0;
      v52 = 0xE000000000000000;
    }

    v121 = v52;
    sub_226E2233C(a1 + 128, v139);
    v53 = swift_dynamicCast();
    v54 = v137;
    if (!v53)
    {
      v54 = 0;
    }

    v118 = v54;
    swift_beginAccess();
    v55 = *(a2 + 24);
    v120 = v28;
    if (!v55)
    {
      goto LABEL_26;
    }

    v56 = *(a2 + 16);
    if (v56 == v124 && v55 == v123)
    {
      goto LABEL_26;
    }

    v57 = *(a2 + 16);
    if (sub_226E63FF0())
    {
      goto LABEL_26;
    }

    v58 = v130;
    swift_beginAccess();
    if (!*(*(v58 + 16) + 16))
    {
      goto LABEL_26;
    }

    v59 = sub_226E53234();
    asUUID(rawString:lossy:)(v56, v55, v59, v42);

    v60 = v130;
    swift_beginAccess();
    *(v42 + *(v38 + 20)) = *(v60 + 16);
    v61 = v125;
    swift_beginAccess();
    v62 = *(v61 + 2);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v61 + 2) = v62;
    v64 = a2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_65;
    }

    while (1)
    {
      v65 = v116;
      v67 = v62[2];
      v66 = v62[3];
      if (v67 >= v66 >> 1)
      {
        v115 = sub_226E1F9B0(v66 > 1, v67 + 1, 1, v62, &qword_27D7B6938, &qword_226E68808, type metadata accessor for EntityGroups.EntityGroup);
        v65 = v116;
        v62 = v115;
      }

      v62[2] = (v67 + 1);
      sub_226E202F8(v42, v62 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v67);
      *(v61 + 2) = v62;
      swift_endAccess();
      v68 = v130;
      swift_beginAccess();
      v69 = *(v68 + 16);
      *(v68 + 16) = MEMORY[0x277D84FA0];

      a2 = v64;
LABEL_26:
      sub_226E635A0();
      v70 = v135;
      v64 = v136;
      v125 = *(v135 + 48);
      if ((v125)(v21, 1, v136) == 1)
      {

        sub_226E15E98(v21, &qword_27D7B6940, &qword_226E68A90);
LABEL_57:
        v98 = v123;
        goto LABEL_58;
      }

      v119 = a2;
      v42 = *(v70 + 32);
      v71 = v131;
      v42(v131, v21, v64);
      if (v118 == 2)
      {
        v72 = HIBYTE(v121) & 0xF;
        if ((v121 & 0x2000000000000000) == 0)
        {
          v72 = v117 & 0xFFFFFFFFFFFFLL;
        }

        if (v72)
        {

          v73 = sub_226E56FC8();
          v75 = v133;
          v74 = v134;
          v76 = v129;
          (*(v133 + 16))(v129, v73, v134);
          v77 = v135;
          v78 = v127;
          (*(v135 + 16))(v127, v71, v64);
          v79 = v123;

          v80 = sub_226E638C0();
          v81 = sub_226E63C80();

          if (os_log_type_enabled(v80, v81))
          {
            v82 = swift_slowAlloc();
            v132 = swift_slowAlloc();
            v137 = v132;
            *v82 = 136315394;
            sub_226E23108(&qword_27D7B6920);
            v83 = sub_226E63FE0();
            v84 = v78;
            v86 = v85;
            v87 = *(v135 + 8);
            v87(v84, v64);
            v88 = sub_226E1FC98(v83, v86, &v137);

            *(v82 + 4) = v88;
            *(v82 + 12) = 2080;
            *(v82 + 14) = sub_226E1FC98(v124, v79, &v137);
            _os_log_impl(&dword_226DD4000, v80, v81, "CNS Transaction %s excluded from group %s due to shared identifier", v82, 0x16u);
            v89 = v132;
            swift_arrayDestroy();
            MEMORY[0x22AA8E1B0](v89, -1, -1);
            MEMORY[0x22AA8E1B0](v82, -1, -1);

            (*(v75 + 8))(v129, v134);
            v87(v131, v64);
          }

          else
          {

            v97 = *(v77 + 8);
            v97(v78, v64);
            (*(v75 + 8))(v76, v74);
            v97(v131, v64);
          }

          a2 = v119;
          v98 = v79;
          goto LABEL_58;
        }
      }

      v90 = v135;
      (*(v135 + 16))(v31, v71, v64);
      swift_beginAccess();
      sub_226E2035C(v34, v31);
      swift_endAccess();
      v92 = *(v90 + 8);
      v61 = (v90 + 8);
      v91 = v92;
      v92(v34, v64);
      if (v118 != 1)
      {
        goto LABEL_56;
      }

      v93 = HIBYTE(v121) & 0xF;
      if ((v121 & 0x2000000000000000) == 0)
      {
        v93 = v117 & 0xFFFFFFFFFFFFLL;
      }

      if (!v93)
      {
LABEL_56:
        v91(v131, v64);

        a2 = v119;
        goto LABEL_57;
      }

      v118 = v91;
      v127 = v61;
      v94 = v126;
      if (*(v126 + 16) && (v95 = sub_226E20614(v117, v121), (v96 & 1) != 0))
      {
        v34 = *(*(v94 + 56) + 8 * v95);
      }

      else
      {
        v34 = MEMORY[0x277D84F90];
      }

      v129 = *(v34 + 2);
      if (!v129)
      {
        break;
      }

      v21 = 0;
      v62 = (v34 + 40);
      v31 = MEMORY[0x277D84F90];
      while (v21 < *(v34 + 2))
      {
        v99 = *(v62 - 1);
        v61 = *v62;

        v64 = v136;
        sub_226E635A0();

        if ((v125)(v19, 1, v64) == 1)
        {
          sub_226E15E98(v19, &qword_27D7B6940, &qword_226E68A90);
        }

        else
        {
          v100 = v120;
          v42(v120, v19, v64);
          v42(v132, v100, v64);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v31 = sub_226E1F9B0(0, *(v31 + 2) + 1, 1, v31, &qword_27D7B6948, &qword_226E68A40, MEMORY[0x277CC95F0]);
          }

          v102 = *(v31 + 2);
          v101 = *(v31 + 3);
          v61 = (v102 + 1);
          if (v102 >= v101 >> 1)
          {
            v31 = sub_226E1F9B0(v101 > 1, v102 + 1, 1, v31, &qword_27D7B6948, &qword_226E68A40, MEMORY[0x277CC95F0]);
          }

          *(v31 + 2) = v61;
          v103 = &v31[((*(v135 + 80) + 32) & ~*(v135 + 80)) + *(v135 + 72) * v102];
          v64 = v136;
          v42(v103, v132, v136);
        }

        ++v21;
        v62 += 2;
        if (v129 == v21)
        {
          goto LABEL_60;
        }
      }

      __break(1u);
LABEL_65:
      v62 = sub_226E1F9B0(0, (v62[2] + 1), 1, v62, &qword_27D7B6938, &qword_226E68808, type metadata accessor for EntityGroups.EntityGroup);
      *(v61 + 2) = v62;
    }

    v31 = MEMORY[0x277D84F90];
LABEL_60:

    swift_beginAccess();

    sub_226E22FC0(v105);
    swift_endAccess();

    v106 = sub_226E56FC8();
    v108 = v133;
    v107 = v134;
    v109 = v128;
    (*(v133 + 16))(v128, v106, v134);
    v98 = v123;

    v110 = sub_226E638C0();
    v111 = sub_226E63C80();

    if (os_log_type_enabled(v110, v111))
    {
      v112 = swift_slowAlloc();
      v113 = swift_slowAlloc();
      v137 = v113;
      *v112 = 134218242;
      v114 = *(v31 + 2);

      *(v112 + 4) = v114;

      *(v112 + 12) = 2080;
      *(v112 + 14) = sub_226E1FC98(v124, v98, &v137);
      _os_log_impl(&dword_226DD4000, v110, v111, "Added %ld CNS transactions to group %s", v112, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v113);
      MEMORY[0x22AA8E1B0](v113, -1, -1);
      MEMORY[0x22AA8E1B0](v112, -1, -1);

      (*(v108 + 8))(v128, v107);
    }

    else
    {

      swift_bridgeObjectRelease_n();
      (*(v108 + 8))(v109, v107);
    }

    v118(v131, v64);
    a2 = v119;
LABEL_58:
    swift_beginAccess();
    v104 = *(a2 + 24);
    *(a2 + 16) = v124;
    *(a2 + 24) = v98;
  }

  else
  {
    v44 = sub_226E56FC8();
    v46 = v133;
    v45 = v134;
    (*(v133 + 16))(v11, v44, v134);
    v47 = sub_226E638C0();
    v48 = sub_226E63CA0();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_226DD4000, v47, v48, "Entity group query returned invalid response", v49, 2u);
      MEMORY[0x22AA8E1B0](v49, -1, -1);
    }

    return (*(v46 + 8))(v11, v45);
  }
}

uint64_t sub_226E1EB4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (a2)
  {
    v8 = sub_226E63AF0();
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = 0;
  if (a3)
  {
LABEL_3:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6878, &qword_226E68920);
    v5 = sub_226E63AF0();
  }

LABEL_4:

  v7(v8, v5, a4);
}

void sub_226E1EC18()
{
  v0 = swift_allocObject();
  *(v0 + 16) = sub_226E21908(MEMORY[0x277D84F90]);
  sub_226E639C0();
  v1 = objc_allocWithZone(FHDatabaseEntity);
  v2 = sub_226E639B0();

  v3 = [v1 initWithEntity_];

  v4 = objc_opt_self();
  v21 = sub_226E1EF80;
  v22 = 0;
  v17 = MEMORY[0x277D85DD0];
  v18 = 1107296256;
  v19 = sub_226E23500;
  v20 = &block_descriptor_25;
  v5 = _Block_copy(&v17);
  v6 = [v4 initWithBuilder:v5 logicalOperator:@"AND"];
  _Block_release(v5);
  if (v6)
  {
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B68F8, &unk_226E695F0);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_226E685E0;
      v17 = sub_226E639C0();
      v18 = v8;
      v9 = v3;
      v10 = v6;
      v11 = @"AND";

      MEMORY[0x22AA8D010](0x746E6564695F742ELL, 0xED00007265696669);

      v12 = v18;
      *(v7 + 32) = v17;
      *(v7 + 40) = v12;
      v17 = sub_226E639C0();
      v18 = v13;

      MEMORY[0x22AA8D010](0xD000000000000020, 0x8000000226E72DC0);

      v14 = v18;
      *(v7 + 48) = v17;
      *(v7 + 56) = v14;
      v6 = sub_226E63AE0();

      v21 = sub_226E21A0C;
      v22 = v0;
      v17 = MEMORY[0x277D85DD0];
      v18 = 1107296256;
      v19 = sub_226E1EB4C;
      v20 = &block_descriptor_28;
      v15 = _Block_copy(&v17);

      [v9 queryDataWithBlock:v10 logicalOperator:v11 selectFields:v6 usingBlock:v15];

      _Block_release(v15);
    }

    swift_beginAccess();
    v16 = *(v0 + 16);
  }

  else
  {
    __break(1u);
  }
}

void sub_226E1EF80(void *a1)
{
  if (a1)
  {
    sub_226E639C0();
    v2 = a1;
    v3 = @"!=";

    MEMORY[0x22AA8D010](0xD000000000000020, 0x8000000226E72DC0);

    v4 = sub_226E639B0();

    v5 = sub_226E639B0();
    [v2 addStringClause:v3 fieldName:v4 expression:v5];

    sub_226E639C0();
    v6 = @"==";

    MEMORY[0x22AA8D010](0xD00000000000001DLL, 0x8000000226E72E20);

    v7 = sub_226E639B0();

    [v2 addIntegerClause:v6 fieldName:v7 expression:2];
  }
}

uint64_t sub_226E1F120(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  sub_226E217DC(0, v2, 0);
  v3 = v12;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_226E2233C(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_226E217DC((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      v7 = v3 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_226E1F234()
{
  v0 = sub_226E638E0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(FHDatabaseManager) init_];
  v6 = [v5 computeAndPersistTransactionGroupings];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6928, &qword_226E68640);
  v7 = sub_226E63960();

  v8 = sub_226E56FC8();
  (*(v1 + 16))(v4, v8, v0);
  v9 = sub_226E638C0();
  v10 = sub_226E63C80();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_226DD4000, v9, v10, "Completed finhealth grouping", v11, 2u);
    MEMORY[0x22AA8E1B0](v11, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  return v7;
}

uint64_t sub_226E1F404()
{
  v0 = sub_226E638E0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() deleteOutdatedEntityGroupsAndInsights];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6928, &qword_226E68640);
  v6 = sub_226E63960();

  v7 = sub_226E56FC8();
  (*(v1 + 16))(v4, v7, v0);
  v8 = sub_226E638C0();
  v9 = sub_226E63C80();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_226DD4000, v8, v9, "Deleted outdated entity groups and insights", v10, 2u);
    MEMORY[0x22AA8E1B0](v10, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  return v6;
}

id sub_226E1F5BC()
{
  v0 = [objc_allocWithZone(FHDatabaseManager) init_];
  v1 = [v0 groupingSchemaUpdate];

  return v1;
}

id EntityGroups.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void EntityGroups.init()()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC13FinHealthCore12EntityGroups_fields;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B68F8, &unk_226E695F0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_226E685C0;
  v25 = sub_226E639C0();
  v26 = v4;
  MEMORY[0x22AA8D010](46, 0xE100000000000000);
  v5 = sub_226E639C0();
  MEMORY[0x22AA8D010](v5);

  v6 = v26;
  *(v3 + 32) = v25;
  *(v3 + 40) = v6;
  v25 = sub_226E639C0();
  v26 = v7;
  MEMORY[0x22AA8D010](46, 0xE100000000000000);
  v8 = sub_226E639C0();
  MEMORY[0x22AA8D010](v8);

  v9 = v26;
  *(v3 + 48) = v25;
  *(v3 + 56) = v9;
  v25 = sub_226E639C0();
  v26 = v10;
  MEMORY[0x22AA8D010](46, 0xE100000000000000);
  v11 = sub_226E639C0();
  MEMORY[0x22AA8D010](v11);

  v12 = v26;
  *(v3 + 64) = v25;
  *(v3 + 72) = v12;
  v25 = sub_226E639C0();
  v26 = v13;
  MEMORY[0x22AA8D010](46, 0xE100000000000000);
  v14 = sub_226E639C0();
  MEMORY[0x22AA8D010](v14);

  v15 = v26;
  *(v3 + 80) = v25;
  *(v3 + 88) = v15;
  *&v0[v2] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6908, &unk_226E68A50);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_226E685D0;
  v25 = sub_226E639C0();
  v26 = v17;
  MEMORY[0x22AA8D010](46, 0xE100000000000000);
  v18 = sub_226E639C0();
  MEMORY[0x22AA8D010](v18);

  sub_226E202A4(0, &qword_280CE9FA8, 0x277CCA980);
  v19 = sub_226E63CF0();
  v20 = objc_allocWithZone(FHSmartCompoundFeatureRankedValue);
  v21 = sub_226E639B0();

  v22 = [v20 initWithLabelAndRank:v21 featureRank:v19];

  if (v22)
  {
    v23 = OBJC_IVAR____TtC13FinHealthCore12EntityGroups_orderBy;
    *(v16 + 32) = v22;
    *&v1[v23] = v16;
    v24.receiver = v1;
    v24.super_class = type metadata accessor for EntityGroups();
    objc_msgSendSuper2(&v24, sel_init);
  }

  else
  {
    __break(1u);
  }
}

id EntityGroups.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EntityGroups();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

size_t sub_226E1F9B0(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_226E1FB8C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B68F8, &unk_226E695F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_226E1FC98(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_226E1FD64(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_226E2233C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_226E1FD64(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_226E1FE70(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_226E63EB0();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_226E1FE70(uint64_t a1, unint64_t a2)
{
  v4 = sub_226E1FEBC(a1, a2);
  sub_226E1FFEC(&unk_283A79ED0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_226E1FEBC(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_226E200D8(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_226E63EB0();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_226E63A30();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_226E200D8(v10, 0);
        result = sub_226E63E50();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_226E1FFEC(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_226E2014C(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_226E200D8(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6958, qword_226E68B50);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_226E2014C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6958, qword_226E68B50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_226E202A4(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_226E202F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EntityGroups.EntityGroup();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_226E2035C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_226E635C0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20]();
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_226E23108(&qword_280CEA228);
  v36 = a2;
  v13 = sub_226E63980();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_226E23108(&qword_27D7B68A8);
      v23 = sub_226E639A0();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_226E209D4(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

unint64_t sub_226E20614(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_226E640A0();
  sub_226E63A00();
  v6 = sub_226E640C0();

  return sub_226E21190(a1, a2, v6);
}

uint64_t sub_226E2068C(uint64_t a1)
{
  v2 = v1;
  v41 = sub_226E635C0();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20]();
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6950, &qword_226E68B00);
  result = sub_226E63E20();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_226E23108(&qword_280CEA228);
      result = sub_226E63980();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_226E209D4(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_226E635C0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20]();
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_226E2068C(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_226E20C50();
      goto LABEL_12;
    }

    sub_226E20E88(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_226E23108(&qword_280CEA228);
  v15 = sub_226E63980();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_226E23108(&qword_27D7B68A8);
      v23 = sub_226E639A0();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_226E64000();
  __break(1u);
  return result;
}

void *sub_226E20C50()
{
  v1 = v0;
  v2 = sub_226E635C0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20]();
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6950, &qword_226E68B00);
  v7 = *v0;
  v8 = sub_226E63E10();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v11 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

uint64_t sub_226E20E88(uint64_t a1)
{
  v2 = v1;
  v37 = sub_226E635C0();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6950, &qword_226E68B00);
  v10 = sub_226E63E20();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_226E23108(&qword_280CEA228);
      result = sub_226E63980();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

unint64_t sub_226E21190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_226E63FF0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_226E21248(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6930, &unk_226E696B0);
  v38 = a2;
  result = sub_226E63F60();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_226E640A0();
      sub_226E63A00();
      result = sub_226E640C0();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_226E214F0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_226E20614(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_226E21248(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_226E20614(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_226E64010();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_226E2166C();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

void *sub_226E2166C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6930, &unk_226E696B0);
  v2 = *v0;
  v3 = sub_226E63F50();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

char *sub_226E217DC(char *a1, int64_t a2, char a3)
{
  result = sub_226E217FC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_226E217FC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B68F8, &unk_226E695F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_226E21908(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6930, &unk_226E696B0);
    v3 = sub_226E63F70();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_226E20614(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void *sub_226E21A0C(void *result)
{
  if (result)
  {
    result = sub_226E1F120(result);
    if (result)
    {
      if (result[2] == 2)
      {
        v3 = result[4];
        v2 = result[5];
        v5 = result[6];
        v4 = result[7];

        swift_beginAccess();
        v6 = *(v1 + 16);
        if (*(v6 + 16) && (v7 = v1, v8 = *(v1 + 16), v9 = sub_226E20614(v5, v4), v1 = v7, (v10 & 1) != 0))
        {
          v11 = *(*(v6 + 56) + 8 * v9);
          swift_endAccess();

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v11 = sub_226E1FB8C(0, *(v11 + 16) + 1, 1, v11);
          }

          v12 = *(v11 + 16);
          v13 = *(v11 + 24);
          v14 = v12 + 1;
          if (v12 >= v13 >> 1)
          {
            v21 = v12 + 1;
            v18 = v11;
            v19 = *(v11 + 16);
            v20 = sub_226E1FB8C((v13 > 1), v12 + 1, 1, v18);
            v12 = v19;
            v14 = v21;
            v11 = v20;
          }

          *(v11 + 16) = v14;
          v15 = v11 + 16 * v12;
          *(v15 + 32) = v3;
          *(v15 + 40) = v2;
        }

        else
        {
          swift_endAccess();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B68F8, &unk_226E695F0);
          v11 = swift_allocObject();
          *(v11 + 16) = xmmword_226E685F0;
          *(v11 + 32) = v3;
          *(v11 + 40) = v2;
        }

        swift_beginAccess();
        v16 = *(v1 + 16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v22 = *(v1 + 16);
        *(v1 + 16) = 0x8000000000000000;
        sub_226E214F0(v11, v5, v4, isUniquelyReferenced_nonNull_native);

        *(v1 + 16) = v22;
        return swift_endAccess();
      }

      else
      {
      }
    }
  }

  return result;
}

uint64_t dispatch thunk of EntityGroups.save()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x60);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_226E17C50;

  return v6();
}

uint64_t dispatch thunk of EntityGroups.delete(_:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x68);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_226E1A614;

  return v8(a1);
}

void sub_226E21FD0()
{
  sub_226E635C0();
  if (v0 <= 0x3F)
  {
    sub_226E22054();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_226E22054()
{
  if (!qword_280CE9FB8)
  {
    sub_226E635C0();
    sub_226E23108(&qword_280CEA228);
    v0 = sub_226E63C70();
    if (!v1)
    {
      atomic_store(v0, &qword_280CE9FB8);
    }
  }
}

uint64_t getEnumTagSinglePayload for EntityGroups.EntityGroup.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for EntityGroups.EntityGroup.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_226E22234()
{
  result = qword_27D7B7230[0];
  if (!qword_27D7B7230[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7B7230);
  }

  return result;
}

unint64_t sub_226E2228C()
{
  result = qword_27D7B7340;
  if (!qword_27D7B7340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B7340);
  }

  return result;
}

unint64_t sub_226E222E4()
{
  result = qword_27D7B7348[0];
  if (!qword_27D7B7348[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7B7348);
  }

  return result;
}

uint64_t sub_226E2233C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_226E22398(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_226E635C0();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = sub_226E63220();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  v9 = type metadata accessor for EntityGroups.EntityGroup();
  v2[10] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v11 = sub_226E638E0();
  v2[16] = v11;
  v12 = *(v11 - 8);
  v2[17] = v12;
  v13 = *(v12 + 64) + 15;
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226E22588, 0, 0);
}

uint64_t sub_226E22588()
{
  v48 = v0;
  v1 = v0[20];
  v2 = v0[16];
  v3 = v0[17];
  v5 = v0[14];
  v4 = v0[15];
  v6 = v0[13];
  v7 = v0[2];
  v8 = sub_226E56FC8();
  v0[21] = v8;
  v9 = *(v3 + 16);
  v0[22] = v9;
  v0[23] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v1, v8, v2);
  sub_226E1B0C0(v7, v4);
  sub_226E1B0C0(v7, v5);
  sub_226E1B0C0(v7, v6);
  v10 = sub_226E638C0();
  v11 = sub_226E63C80();
  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[20];
  v14 = v0[16];
  v15 = v0[17];
  v17 = v0[14];
  v16 = v0[15];
  v18 = v0[13];
  if (v12)
  {
    v42 = v0[10];
    v46 = v0[20];
    v19 = v0[4];
    v43 = v11;
    v20 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v47 = v44;
    *v20 = 136315650;
    sub_226E23108(&qword_27D7B6920);
    v45 = v14;
    v21 = sub_226E63FE0();
    v23 = v22;
    sub_226E1B124(v16);
    v24 = sub_226E1FC98(v21, v23, &v47);

    *(v20 + 4) = v24;
    *(v20 + 12) = 2080;
    v25 = *(v17 + *(v42 + 20));
    sub_226E23108(&qword_280CEA228);
    v26 = sub_226E63C40();
    v28 = v27;
    sub_226E1B124(v17);
    v29 = sub_226E1FC98(v26, v28, &v47);

    *(v20 + 14) = v29;
    *(v20 + 22) = 2048;
    v30 = *(*(v18 + *(v42 + 20)) + 16);
    sub_226E1B124(v18);
    *(v20 + 24) = v30;
    _os_log_impl(&dword_226DD4000, v10, v43, "Saving Entity Group ID: %s\nTransaction Ids: %s\nTransaction count: %ld", v20, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AA8E1B0](v44, -1, -1);
    MEMORY[0x22AA8E1B0](v20, -1, -1);

    v31 = *(v15 + 8);
    v31(v46, v45);
  }

  else
  {
    sub_226E1B124(v0[13]);

    sub_226E1B124(v17);
    sub_226E1B124(v16);
    v31 = *(v15 + 8);
    v31(v13, v14);
  }

  v0[24] = v31;
  v32 = v0[9];
  v33 = v0[10];
  v34 = v0[6];
  v35 = v0[2];
  (*(v0[5] + 16))(v34, v35, v0[4]);
  MEMORY[0x22AA8C800](v34);
  v36 = *(v35 + *(v33 + 20));
  v37 = *(MEMORY[0x277CC67A0] + 4);
  v38 = swift_task_alloc();
  v0[25] = v38;
  *v38 = v0;
  v38[1] = sub_226E22900;
  v39 = v0[9];
  v40 = v0[3];

  return MEMORY[0x282116ED8](v39, v36);
}

uint64_t sub_226E22900()
{
  v2 = *(*v1 + 200);
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  v8 = *v1;
  *(*v1 + 208) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_226E22CD4;
  }

  else
  {
    v6 = sub_226E22A70;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_226E22A70()
{
  v34 = v0;
  v1 = *(v0 + 184);
  v2 = *(v0 + 96);
  v3 = *(v0 + 16);
  (*(v0 + 176))(*(v0 + 152), *(v0 + 168), *(v0 + 128));
  sub_226E1B0C0(v3, v2);
  v4 = sub_226E638C0();
  v5 = sub_226E63C80();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 192);
  v8 = *(v0 + 152);
  v10 = *(v0 + 128);
  v9 = *(v0 + 136);
  v11 = *(v0 + 96);
  if (v6)
  {
    v12 = *(v0 + 32);
    v32 = *(v0 + 192);
    v13 = swift_slowAlloc();
    v31 = v8;
    v14 = swift_slowAlloc();
    v33 = v14;
    *v13 = 136315138;
    sub_226E23108(&qword_27D7B6920);
    v15 = sub_226E63FE0();
    v17 = v16;
    sub_226E1B124(v11);
    v18 = sub_226E1FC98(v15, v17, &v33);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_226DD4000, v4, v5, "Entity Group Saved: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x22AA8E1B0](v14, -1, -1);
    MEMORY[0x22AA8E1B0](v13, -1, -1);

    v32(v31, v10);
  }

  else
  {

    sub_226E1B124(v11);
    v7(v8, v10);
  }

  v20 = *(v0 + 152);
  v19 = *(v0 + 160);
  v21 = *(v0 + 144);
  v23 = *(v0 + 112);
  v22 = *(v0 + 120);
  v25 = *(v0 + 96);
  v24 = *(v0 + 104);
  v26 = *(v0 + 88);
  v27 = *(v0 + 72);
  v28 = *(v0 + 48);

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_226E22CD4()
{
  v41 = v0;
  v1 = *(v0 + 208);
  v2 = *(v0 + 184);
  v3 = *(v0 + 88);
  v4 = *(v0 + 16);
  (*(v0 + 176))(*(v0 + 144), *(v0 + 168), *(v0 + 128));
  sub_226E1B0C0(v4, v3);
  v5 = v1;
  v6 = sub_226E638C0();
  v7 = sub_226E63CA0();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 208);
  v10 = *(v0 + 192);
  v12 = *(v0 + 136);
  v11 = *(v0 + 144);
  v13 = *(v0 + 128);
  v14 = *(v0 + 88);
  if (v8)
  {
    v39 = *(v0 + 192);
    v15 = *(v0 + 32);
    v38 = *(v0 + 128);
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v40 = v18;
    *v16 = 138412546;
    v19 = v9;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 4) = v20;
    *v17 = v20;
    *(v16 + 12) = 2080;
    sub_226E23108(&qword_27D7B6920);
    v21 = sub_226E63FE0();
    v37 = v11;
    v23 = v22;
    sub_226E1B124(v14);
    v24 = sub_226E1FC98(v21, v23, &v40);

    *(v16 + 14) = v24;
    _os_log_impl(&dword_226DD4000, v6, v7, "Error: %@ when saving entity group: %s", v16, 0x16u);
    sub_226E15E98(v17, &qword_27D7B6918, &qword_226E68950);
    MEMORY[0x22AA8E1B0](v17, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    MEMORY[0x22AA8E1B0](v18, -1, -1);
    MEMORY[0x22AA8E1B0](v16, -1, -1);

    v39(v37, v38);
  }

  else
  {

    sub_226E1B124(v14);
    v10(v11, v13);
  }

  v26 = *(v0 + 152);
  v25 = *(v0 + 160);
  v27 = *(v0 + 144);
  v29 = *(v0 + 112);
  v28 = *(v0 + 120);
  v31 = *(v0 + 96);
  v30 = *(v0 + 104);
  v32 = *(v0 + 88);
  v33 = *(v0 + 72);
  v34 = *(v0 + 48);

  v35 = *(v0 + 8);

  return v35();
}

uint64_t sub_226E22FC0(uint64_t a1)
{
  v2 = sub_226E635C0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = (MEMORY[0x28223BE20])();
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v5);
  v10 = &v17 - v9;
  v11 = *(a1 + 16);
  if (v11)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v7, v15, v2);
      sub_226E2035C(v10, v7);
      result = (*(v12 - 8))(v10, v2);
      v15 += v16;
      --v11;
    }

    while (v11);
  }

  return result;
}

uint64_t sub_226E23108(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_226E635C0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_226E2314C()
{
  v2 = *(type metadata accessor for EntityGroups.EntityGroup() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_226E1A614;

  return sub_226E1C4C0(v5, v6, v7, v8, v0 + v3, v4);
}

uint64_t sub_226E2324C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6870, &qword_226E683B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_39Tm()
{
  v1 = (type metadata accessor for EntityGroups.EntityGroup() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();

  v6 = v0 + v3;
  v7 = sub_226E635C0();
  (*(*(v7 - 8) + 8))(v6, v7);
  v8 = *(v6 + v1[7]);

  v9 = *(v0 + v4);

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v2 | 7);
}

uint64_t sub_226E233C8()
{
  v2 = *(type metadata accessor for EntityGroups.EntityGroup() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_226E1A614;

  return sub_226E1C55C(v5, v6, v7, v8, v0 + v3, v4);
}

void *sub_226E23504(char *a1, void *a2, uint64_t a3)
{
  v328 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6968, &qword_226E68848);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v317 = &v289 - v7;
  v319 = sub_226E63270();
  v322 = *(v319 - 8);
  v8 = *(v322 + 64);
  MEMORY[0x28223BE20](v319);
  v318 = &v289 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v326 = sub_226E62CE0();
  v333 = *(v326 - 8);
  v10 = *(v333 + 64);
  MEMORY[0x28223BE20](v326);
  v296 = &v289 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v295 = sub_226E631E0();
  v294 = *(v295 - 8);
  v12 = *(v294 + 64);
  MEMORY[0x28223BE20](v295);
  v290 = &v289 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6970, &qword_226E68850);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v314 = &v289 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v315 = &v289 - v18;
  v342 = sub_226E63200();
  v339 = *(v342 - 8);
  v19 = *(v339 + 64);
  MEMORY[0x28223BE20](v342);
  v335 = &v289 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v325 = sub_226E63320();
  v332 = *(v325 - 8);
  v21 = *(v332 + 64);
  MEMORY[0x28223BE20](v325);
  v293 = &v289 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v352 = sub_226E62CC0();
  v291 = *(v352 - 8);
  v23 = *(v291 + 64);
  MEMORY[0x28223BE20](v352);
  v351 = &v289 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v353 = sub_226E62CD0();
  v359 = *(v353 - 8);
  v25 = *(v359 + 64);
  MEMORY[0x28223BE20](v353);
  v360 = &v289 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v329 = sub_226E62D30();
  v331 = *(v329 - 8);
  v27 = *(v331 + 64);
  MEMORY[0x28223BE20](v329);
  v312 = &v289 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6978, &qword_226E68858);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v29 - 8);
  v313 = &v289 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v340 = &v289 - v34;
  MEMORY[0x28223BE20](v33);
  v338 = &v289 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6980, &qword_226E68860);
  v37 = *(*(v36 - 8) + 64);
  v38 = MEMORY[0x28223BE20](v36 - 8);
  v316 = &v289 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v38);
  v350 = &v289 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v357 = &v289 - v43;
  MEMORY[0x28223BE20](v42);
  v337 = &v289 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6988, &qword_226E68D50);
  v46 = *(*(v45 - 8) + 64);
  v47 = MEMORY[0x28223BE20](v45 - 8);
  v311 = &v289 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x28223BE20](v47);
  v349 = &v289 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v356 = &v289 - v52;
  MEMORY[0x28223BE20](v51);
  v336 = &v289 - v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6990, &qword_226E68868);
  v55 = *(*(v54 - 8) + 64);
  v56 = MEMORY[0x28223BE20](v54 - 8);
  v348 = &v289 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = MEMORY[0x28223BE20](v56);
  v310 = &v289 - v59;
  v60 = MEMORY[0x28223BE20](v58);
  v355 = &v289 - v61;
  MEMORY[0x28223BE20](v60);
  v327 = &v289 - v62;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6858, &qword_226E688C0);
  v64 = *(*(v63 - 8) + 64);
  MEMORY[0x28223BE20](v63 - 8);
  v344 = &v289 - v65;
  v343 = sub_226E62FD0();
  v341 = *(v343 - 8);
  v66 = *(v341 + 64);
  v67 = MEMORY[0x28223BE20](v343);
  v334 = &v289 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v67);
  v324 = &v289 - v69;
  v323 = sub_226E62E90();
  v309 = *(v323 - 1);
  v70 = *(v309 + 64);
  v71 = MEMORY[0x28223BE20](v323);
  v308 = &v289 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v71);
  v307 = &v289 - v73;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6998, &qword_226E68870);
  v75 = *(*(v74 - 8) + 64);
  MEMORY[0x28223BE20](v74 - 8);
  v306 = &v289 - v76;
  v305 = sub_226E62E70();
  v304 = *(v305 - 8);
  v77 = *(v304 + 64);
  MEMORY[0x28223BE20](v305);
  v303 = &v289 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  v302 = sub_226E62EA0();
  v301 = *(v302 - 8);
  v79 = *(v301 + 64);
  v80 = MEMORY[0x28223BE20](v302);
  v300 = &v289 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v80);
  v299 = &v289 - v82;
  v330 = sub_226E63590();
  v347 = *(v330 - 8);
  v83 = *(v347 + 64);
  v84 = MEMORY[0x28223BE20](v330);
  v292 = &v289 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v84);
  v321 = &v289 - v86;
  v346 = sub_226E62D70();
  v354 = *(v346 - 1);
  v87 = *(v354 + 64);
  MEMORY[0x28223BE20](v346);
  v345 = &v289 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6940, &qword_226E68A90);
  v90 = *(*(v89 - 8) + 64);
  MEMORY[0x28223BE20](v89 - 8);
  v92 = &v289 - v91;
  v93 = sub_226E635C0();
  v94 = *(v93 - 8);
  v95 = *(v94 + 64);
  MEMORY[0x28223BE20](v93);
  v97 = &v289 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v98 setAccountType_];
  if (a2)
  {
    v99 = a2;
    [v98 setAccountType_];
  }

  v320 = a2;
  sub_226E62F60();
  sub_226E635B0();
  v100 = *(v94 + 8);
  v100(v97, v93);
  v101 = sub_226E639B0();

  [v98 setIdentifier_];

  sub_226E62F20();
  if (v102)
  {
    v103 = sub_226E639B0();

    [v98 setTransactionServiceIdentifier_];
  }

  sub_226E62FB0();
  sub_226E635B0();
  v100(v97, v93);
  v104 = sub_226E639B0();

  [v98 setFinanceAccountIdentifier_];

  sub_226E62F60();
  sub_226E635B0();
  v100(v97, v93);
  v105 = sub_226E639B0();

  [v98 setFinanceTransactionIdentifier_];

  sub_226E62FA0();
  v106 = (*(v94 + 48))(v92, 1, v93);
  v358 = v98;
  if (v106 == 1)
  {
    v107 = v98;
    sub_226E15E98(v92, &qword_27D7B6940, &qword_226E68A90);
    v108 = 0;
  }

  else
  {
    sub_226E635B0();
    v100(v92, v93);
    v108 = sub_226E639B0();
    v107 = v358;
  }

  v109 = v300;
  [v107 setFinanceTransactionSharedIdentifier_];

  v110 = v345;
  sub_226E62F10();
  sub_226E62D50();
  v111 = *(v354 + 8);
  v354 += 8;
  v300 = v111;
  (v111)(v110, v346);
  v112 = sub_226E639B0();

  [v107 setCurrencyCode_];

  v113 = v321;
  sub_226E62EF0();
  v114 = sub_226E63530();
  v115 = *(v347 + 8);
  v298 = v347 + 8;
  v297 = v115;
  v115(v113, v330);
  [v107 setTransactionDate_];

  v116 = v299;
  sub_226E62F90();
  v117 = v301;
  v118 = v116;
  v119 = v302;
  (*(v301 + 32))(v109, v118, v302);
  v120 = (*(v117 + 88))(v109, v119);
  if (v120 == *MEMORY[0x277CC71F8])
  {
    v121 = 8;
    v122 = v306;
  }

  else
  {
    v121 = 0;
    v122 = v306;
    if (v120 != *MEMORY[0x277CC7200] && v120 != *MEMORY[0x277CC7210])
    {
      if (v120 == *MEMORY[0x277CC7208])
      {
        v121 = 1;
      }

      else if (v120 == *MEMORY[0x277CC7218])
      {
        v121 = 6;
      }

      else
      {
        (*(v117 + 8))(v109, v119, 0);
        v121 = -1;
      }
    }
  }

  [v107 setTransactionStatus_];
  v123 = v303;
  sub_226E62F00();
  v124 = sub_226E26A7C(v123);
  (*(v304 + 8))(v123, v305);
  [v107 setTransactionType_];
  sub_226E62F50();
  v125 = sub_226E639B0();

  [v107 setTransactionDescription_];

  sub_226E62F40();
  v126 = sub_226E63010();
  v127 = *(v126 - 8);
  if ((*(v127 + 48))(v122, 1, v126) == 1)
  {
    sub_226E15E98(v122, &qword_27D7B6998, &qword_226E68870);
    v128 = 0;
  }

  else
  {
    v129 = sub_226E63000();
    (*(v127 + 8))(v122, v126);
    v128 = v129;
  }

  v130 = v358;
  [v358 setIndustryCode_];
  v131 = sub_226E62EE0();
  [v130 setLocation_];

  sub_226E62FB0();
  sub_226E635B0();
  v100(v97, v93);
  v132 = sub_226E639B0();

  [v130 setTransactionSourceIdentifier_];

  v133 = v307;
  sub_226E62F80();
  v134 = v309;
  v135 = v308;
  v136 = v133;
  v137 = v323;
  (*(v309 + 32))(v308, v136, v323);
  v138 = (*(v134 + 88))(v135, v137);
  if (v138 == *MEMORY[0x277CC71F0])
  {
    v139 = 0;
    v140 = v339;
    v141 = v325;
  }

  else
  {
    v140 = v339;
    v141 = v325;
    if (v138 == *MEMORY[0x277CC71E8])
    {
      v139 = 1;
    }

    else if (v138 == *MEMORY[0x277CC71E0])
    {
      v139 = 2;
    }

    else
    {
      (*(v134 + 8))(v135, v137);
      v139 = 0;
    }
  }

  [v130 setFinanceTransactionSource_];
  v142 = v345;
  sub_226E62F10();
  v143 = sub_226E62D60();
  v145 = v144;
  v147 = v146;
  (v300)(v142, v346);
  *&v364 = v143;
  *(&v364 + 1) = v145;
  v365 = v147;
  v148 = v324;
  sub_226E62F30();
  v149 = v341;
  v150 = v334;
  v151 = v343;
  (*(v341 + 104))(v334, *MEMORY[0x277CC7790], v343);
  sub_226E26D3C();
  sub_226E63AC0();
  sub_226E63AC0();
  v152 = *(v149 + 8);
  v152(v150, v151);
  v152(v148, v151);
  if (v361 == v363)
  {
    sub_226E63D50();
  }

  v153 = objc_allocWithZone(MEMORY[0x277CCA980]);
  v361 = v364;
  v362 = v365;
  v154 = [v153 initWithDecimal_];
  v155 = v358;
  [v358 setAmount_];

  v156 = v344;
  sub_226E62EC0();
  v157 = v156;
  v158 = v347;
  v159 = v156;
  v160 = v330;
  v161 = (*(v347 + 48))(v159, 1, v330);
  v162 = v326;
  if (v161 == 1)
  {
    sub_226E15E98(v157, &qword_27D7B6858, &qword_226E688C0);
  }

  else
  {
    v163 = v292;
    (*(v158 + 32))(v292, v157, v160);
    v164 = v160;
    v165 = sub_226E63530();
    [v155 setTransactionStatusChangedDate_];

    v297(v163, v164);
  }

  v166 = v342;
  v167 = v329;
  sub_226E62ED0();
  if (v168)
  {
    *&v361 = 0x746E61686372656DLL;
    *(&v361 + 1) = 0xE90000000000002DLL;
    MEMORY[0x22AA8D010]();
    v169 = sub_226E639B0();

    [v358 setMerchantUniqueIdentifier_];

    v140 = v339;
    v170 = sub_226E639B0();
    [v358 setName_];

    v171 = sub_226E639B0();

    [v358 setDisplayName_];

    v166 = v342;
  }

  (*(v331 + 56))(v355, 1, 1, v167);
  (*(v332 + 56))(v356, 1, 1, v141);
  v172 = *(v140 + 56);
  v324 = (v140 + 56);
  v323 = v172;
  (v172)(v340, 1, 1, v166);
  (*(v333 + 56))(v357, 1, 1, v162);
  if (v328)
  {
    v308 = a1;
    v173 = *(v328 + 16);
    v174 = v353;
    v175 = v360;
    if (v173)
    {
      v176 = *(v359 + 16);
      v177 = v328 + ((*(v359 + 80) + 32) & ~*(v359 + 80));
      v178 = (v359 + 88);
      v341 = v359 + 8;
      v354 = v359 + 96;
      v309 = v339 + 32;
      v347 = v291 + 32;
      v359 += 16;
      v179 = *(v359 + 56);
      v346 = (v291 + 8);
      v180 = *MEMORY[0x277CC6BE8];
      LODWORD(v345) = *MEMORY[0x277CC6BE0];
      LODWORD(v334) = *MEMORY[0x277CC6BF0];
      LODWORD(v344) = v180;
      v343 = v179;
      v176(v360, v177, v353);
      while (1)
      {
        v195 = (*v178)(v175, v174);
        if (v195 == v180)
        {
          (*v354)(v175, v174);
          v181 = v351;
          v182 = v352;
          (*v347)(v351, v360, v352);
          v183 = v176;
          v184 = v349;
          sub_226E62CA0();
          v185 = v356;
          sub_226E15E98(v356, &qword_27D7B6988, &qword_226E68D50);
          sub_226E26D94(v184, v185, &qword_27D7B6988, &qword_226E68D50);
          v186 = v348;
          sub_226E62CB0();
          v187 = v355;
          sub_226E15E98(v355, &qword_27D7B6990, &qword_226E68868);
          v188 = v186;
          v176 = v183;
          sub_226E26D94(v188, v187, &qword_27D7B6990, &qword_226E68868);
          v189 = v350;
          sub_226E62C90();
          v190 = v181;
          v175 = v360;
          v191 = v182;
          v174 = v353;
          (*v346)(v190, v191);
          v192 = v357;
          sub_226E15E98(v357, &qword_27D7B6980, &qword_226E68860);
          v193 = v189;
          v179 = v343;
          v194 = v192;
          v180 = v344;
          sub_226E26D94(v193, v194, &qword_27D7B6980, &qword_226E68860);
        }

        else if (v195 == v345 || v195 != v334)
        {
          (*v341)(v175, v174);
        }

        else
        {
          v196 = v340;
          sub_226E15E98(v340, &qword_27D7B6978, &qword_226E68858);
          (*v354)(v175, v174);
          v197 = v175;
          v198 = v342;
          (*v309)(v196, v197, v342);
          v199 = v198;
          v175 = v360;
          (v323)(v196, 0, 1, v199);
        }

        v177 += v179;
        if (!--v173)
        {
          break;
        }

        v176(v175, v177, v174);
      }
    }

    a1 = v308;
    v162 = v326;
    v141 = v325;
    v167 = v329;
  }

  v200 = v327;
  sub_226E26D94(v355, v327, &qword_27D7B6990, &qword_226E68868);
  sub_226E26D94(v356, v336, &qword_27D7B6988, &qword_226E68D50);
  sub_226E26D94(v357, v337, &qword_27D7B6980, &qword_226E68860);
  sub_226E26D94(v340, v338, &qword_27D7B6978, &qword_226E68858);
  v201 = v200;
  v202 = v310;
  sub_226E1A598(v201, v310, &qword_27D7B6990, &qword_226E68868);
  v203 = v331;
  if ((*(v331 + 48))(v202, 1, v167) == 1)
  {
    sub_226E15E98(v202, &qword_27D7B6990, &qword_226E68868);
    v204 = v335;
    v205 = v314;
    v206 = v332;
  }

  else
  {
    v207 = v312;
    (*(v203 + 32))(v312, v202, v167);
    sub_226E261DC(v207, v358);
    *&v208 = COERCE_DOUBLE(sub_226E62D00());
    v204 = v335;
    v205 = v314;
    if ((v209 & 1) == 0)
    {
      v210 = *&v208;
      v211 = sub_226E62D10();
      if ((v212 & 1) == 0)
      {
        v213 = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:v210 longitude:*&v211];
        [v358 setLocation_];
      }
    }

    v214 = sub_226E62CF0();
    v206 = v332;
    if (v214)
    {
      v215 = v214;
      v216 = [v214 street];
      if (!v216)
      {
        sub_226E639C0();
        v216 = sub_226E639B0();
        v204 = v335;
      }

      v217 = v358;
      [v358 setStreet_];

      v218 = [v215 ISOCountryCode];
      if (!v218)
      {
        sub_226E639C0();
        v218 = sub_226E639B0();
        v204 = v335;
      }

      [v217 setCountryCode_];

      v219 = [v215 city];
      if (!v219)
      {
        sub_226E639C0();
        v219 = sub_226E639B0();
        v204 = v335;
      }

      [v217 setCity_];

      v220 = [v215 state];
      if (!v220)
      {
        sub_226E639C0();
        v220 = sub_226E639B0();
        v204 = v335;
      }

      [v217 setState_];

      v221 = [v215 postalCode];
      if (!v221)
      {
        sub_226E639C0();
        v221 = sub_226E639B0();
        v204 = v335;
      }

      [v217 setZip_];

      v206 = v332;
      v203 = v331;
    }

    (*(v203 + 8))(v312, v329);
  }

  v222 = v311;
  sub_226E1A598(v336, v311, &qword_27D7B6988, &qword_226E68D50);
  v223 = (*(v206 + 48))(v222, 1, v141);
  v224 = v342;
  if (v223 == 1)
  {
    sub_226E15E98(v222, &qword_27D7B6988, &qword_226E68D50);
  }

  else
  {
    v225 = v222;
    v226 = v293;
    (*(v206 + 32))(v293, v225, v141);
    sub_226E2662C(v226, v358);
    (*(v206 + 8))(v226, v141);
  }

  v227 = v313;
  sub_226E1A598(v338, v313, &qword_27D7B6978, &qword_226E68858);
  v228 = v339;
  if ((*(v339 + 48))(v227, 1, v224) == 1)
  {
    sub_226E15E98(v227, &qword_27D7B6978, &qword_226E68858);
    v229 = v317;
  }

  else
  {
    (*(v228 + 32))(v204, v227, v224);
    v230 = sub_226E63110();
    if ((v230 & 0x10000) == 0)
    {
      [v358 setIndustryCode_];
    }

    v231 = v315;
    sub_226E631F0();
    sub_226E1A598(v231, v205, &qword_27D7B6970, &qword_226E68850);
    v232 = v294;
    v233 = v295;
    if ((*(v294 + 48))(v205, 1, v295) == 1)
    {
      v234 = 0;
    }

    else
    {
      v235 = v290;
      (*(v232 + 32))(v290, v205, v233);
      v236 = v232;
      sub_226E631B0();
      v238 = v237;
      sub_226E631C0();
      v240 = v239;
      sub_226E631A0();
      v242 = v241;
      sub_226E63190();
      v244 = v243;
      sub_226E63180();
      v246 = v245;
      v308 = a1;
      v247 = v321;
      sub_226E631D0();
      v248 = objc_allocWithZone(MEMORY[0x277CE41F8]);
      v249 = sub_226E63530();
      v234 = [v248 initWithCoordinate:v249 altitude:v238 horizontalAccuracy:v240 verticalAccuracy:v242 timestamp:{v244, v246}];

      a1 = v308;
      v297(v247, v330);
      (*(v236 + 8))(v235, v233);
    }

    v229 = v317;
    sub_226E15E98(v315, &qword_27D7B6970, &qword_226E68850);
    v250 = v358;
    [v358 setLocation_];

    sub_226E63150();
    if (v251)
    {
      v252 = sub_226E639B0();

      [v250 setIndustryCategory_];
    }

    sub_226E63170();
    v254 = v358;
    if (!v253)
    {
      v255 = [v358 countryCode];
      sub_226E639C0();

      v204 = v335;
    }

    v256 = sub_226E639B0();

    [v254 setCountryCode_];

    sub_226E63120();
    if (!v257)
    {
      v258 = [v254 city];
      sub_226E639C0();

      v204 = v335;
    }

    v259 = sub_226E639B0();

    [v254 setCity_];

    sub_226E63130();
    if (!v260)
    {
      v261 = [v254 state];
      sub_226E639C0();

      v204 = v335;
    }

    v262 = sub_226E639B0();

    [v254 setState_];

    sub_226E63100();
    if (!v263)
    {
      v264 = [v254 zip];
      sub_226E639C0();

      v204 = v335;
    }

    v265 = sub_226E639B0();

    [v254 setZip_];

    sub_226E63140();
    if (!v266)
    {
      v267 = [v254 rawName];
      sub_226E639C0();

      v204 = v335;
    }

    v268 = sub_226E639B0();

    [v254 setRawName_];

    sub_226E63160();
    if (!v269)
    {
      v270 = [v254 country];
      sub_226E639C0();

      v204 = v335;
    }

    v271 = sub_226E639B0();

    [v254 setCountry_];

    (*(v339 + 8))(v204, v342);
  }

  v272 = v316;
  sub_226E1A598(v337, v316, &qword_27D7B6980, &qword_226E68860);
  v273 = (*(v333 + 48))(v272, 1, v162);
  v274 = v319;
  if (v273 == 1)
  {
    sub_226E15E98(v272, &qword_27D7B6980, &qword_226E68860);
    v275 = v358;
    [v358 setCategory_];
  }

  else
  {
    v276 = v333;
    v277 = v296;
    (*(v333 + 32))(v296, v272, v162);
    v278 = sub_226E26DFC(v277);
    v275 = v358;
    [v358 setCategory_];
    (*(v276 + 8))(v277, v162);
  }

  sub_226E62EB0();
  v279 = v322;
  if ((*(v322 + 48))(v229, 1, v274) == 1)
  {

    v280 = sub_226E62FC0();
    (*(*(v280 - 8) + 8))(a1, v280);
    sub_226E15E98(v338, &qword_27D7B6978, &qword_226E68858);
    sub_226E15E98(v337, &qword_27D7B6980, &qword_226E68860);
    sub_226E15E98(v336, &qword_27D7B6988, &qword_226E68D50);
    sub_226E15E98(v327, &qword_27D7B6990, &qword_226E68868);
    v281 = &qword_27D7B6968;
    v282 = &qword_226E68848;
    v283 = v229;
  }

  else
  {
    (*(v279 + 32))(v318, v229, v274);
    sub_226E63250();
    v284 = sub_226E639B0();

    [v358 setProprietaryBankTransactionCode_];

    v275 = v358;
    sub_226E63260();
    if (v285)
    {
      v286 = sub_226E639B0();

      [v275 setProprietaryBankTransactionIssuer_];
    }

    v287 = sub_226E62FC0();
    (*(*(v287 - 8) + 8))(a1, v287);
    (*(v322 + 8))(v318, v274);
    sub_226E15E98(v338, &qword_27D7B6978, &qword_226E68858);
    sub_226E15E98(v337, &qword_27D7B6980, &qword_226E68860);
    sub_226E15E98(v336, &qword_27D7B6988, &qword_226E68D50);
    v281 = &qword_27D7B6990;
    v282 = &qword_226E68868;
    v283 = v327;
  }

  sub_226E15E98(v283, v281, v282);
  return v275;
}