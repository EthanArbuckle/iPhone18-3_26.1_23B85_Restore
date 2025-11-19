@interface MapsSuggestionsLocalizedTicketedEvent
@end

@implementation MapsSuggestionsLocalizedTicketedEvent

void __MapsSuggestionsLocalizedTicketedEvent_SectionString_block_invoke()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___MapsSuggestionsBundle_block_invoke_7;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, block);
  }

  v0 = _MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7;
  v1 = [v0 localizedStringForKey:@"MAPS_FIM_TICKETED_EVENT_SEAT_SECTION" value:@"Section %@<unlocalized>" table:0];
  v2 = MapsSuggestionsNonNilString(v1, &stru_1F444C108);

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __MapsSuggestionsLocalizedTicketedEvent_SectionString_block_invoke_2;
  v6[3] = &unk_1E81F83B8;
  v7 = v2;
  v3 = v2;
  v4 = _Block_copy(v6);
  v5 = MapsSuggestionsLocalizedTicketedEvent_SectionString_s_formatter;
  MapsSuggestionsLocalizedTicketedEvent_SectionString_s_formatter = v4;
}

id __MapsSuggestionsLocalizedTicketedEvent_SectionString_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a2;
  v5 = [[v3 alloc] initWithFormat:*(a1 + 32), v4];

  return v5;
}

void __MapsSuggestionsLocalizedTicketedEvent_SeatRowString_block_invoke()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___MapsSuggestionsBundle_block_invoke_7;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, block);
  }

  v0 = _MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7;
  v1 = [v0 localizedStringForKey:@"MAPS_FIM_TICKETED_EVENT_SEAT_ROW" value:@"Row %@<unlocalized>" table:0];
  v2 = MapsSuggestionsNonNilString(v1, &stru_1F444C108);

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __MapsSuggestionsLocalizedTicketedEvent_SeatRowString_block_invoke_2;
  v6[3] = &unk_1E81F83B8;
  v7 = v2;
  v3 = v2;
  v4 = _Block_copy(v6);
  v5 = MapsSuggestionsLocalizedTicketedEvent_SeatRowString_s_formatter;
  MapsSuggestionsLocalizedTicketedEvent_SeatRowString_s_formatter = v4;
}

id __MapsSuggestionsLocalizedTicketedEvent_SeatRowString_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a2;
  v5 = [[v3 alloc] initWithFormat:*(a1 + 32), v4];

  return v5;
}

void __MapsSuggestionsLocalizedTicketedEvent_SeatNumberString_block_invoke()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___MapsSuggestionsBundle_block_invoke_7;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = "LocalizedString";
  if (_MapsSuggestionsBundle_s_msgBundleToken_7 != -1)
  {
    dispatch_once(&_MapsSuggestionsBundle_s_msgBundleToken_7, block);
  }

  v0 = _MapsSuggestionsBundle_s_bundleWithMapsSuggestionsIdentifier_7;
  v1 = [v0 localizedStringForKey:@"MAPS_FIM_TICKETED_EVENT_SEAT_NUMBER" value:@"Seat %@<unlocalized>" table:0];
  v2 = MapsSuggestionsNonNilString(v1, &stru_1F444C108);

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __MapsSuggestionsLocalizedTicketedEvent_SeatNumberString_block_invoke_2;
  v6[3] = &unk_1E81F83B8;
  v7 = v2;
  v3 = v2;
  v4 = _Block_copy(v6);
  v5 = MapsSuggestionsLocalizedTicketedEvent_SeatNumberString_s_formatter;
  MapsSuggestionsLocalizedTicketedEvent_SeatNumberString_s_formatter = v4;
}

id __MapsSuggestionsLocalizedTicketedEvent_SeatNumberString_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a2;
  v5 = [[v3 alloc] initWithFormat:*(a1 + 32), v4];

  return v5;
}

@end